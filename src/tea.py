# -*- coding: utf-8 -*-
from flask import Flask, render_template, session, redirect, url_for, current_app, request, flash
from db import db, Message, Wiki, Wiki_Stat, Product, Product_Attr, Product_Stat
from form import MessageForm, LoginForm, WikiForm, ProductForm
from module import admin

app = Flask(__name__)
app.debug = True
app.config.from_object(__name__)
app.secret_key = 'A0Zr31j/3yX R~XHH!jmN]LWX/,?RT'

# navgator module
@app.route('/')
def index():
	return render_template('index.html')

@app.route('/drink')
def drink():
	return render_template('drink.html')
	
@app.route('/photo')
def photo():
	return render_template('photo.html')

@app.route('/consult')
def consult():
	return render_template('consult.html')
	
@app.route('/about')
def about():
	return render_template('about.html')

@app.route('/sitemap')
def sitemap():
	p,count = int(request.args.get('p','1')),40
	wiki_page = Wiki.query.filter(Wiki.mark==0).order_by(Wiki.id.desc()).paginate(p,count)
	return render_template('sitemap.html',wikis=wiki_page.items)
	
@app.route('/login', methods=['POST','GET'])
def login():
	form = LoginForm(request.form)
	if request.method == 'POST' and form.validate():
		if form.username.data == 'bsspirit' and form.password.data == '85831923':
			session['login'] = True
			return redirect(url_for('admin'))
	return render_template('login.html')

@app.route('/logout')
def logout():
	session['login'] = False
	return redirect(url_for('index'))
	
# message module	
@app.route('/message', methods=['POST','GET'])
def message():
	form = MessageForm(request.form)	
	if request.method == 'POST' and form.validate():
		db.session.add(Message(form.name.data,form.email.data,form.content.data,request.remote_addr))
		db.session.commit()

	p,count = int(request.args.get('p','1')),10
	messags_page = Message.query.filter(Message.mark==0).order_by(Message.id.desc()).paginate(p,count)	
	return render_template('message.html',messages=messags_page.items, form=form)

# wiki module
@app.route('/wiki')
def wiki():
	p,count = int(request.args.get('p','1')),20
	wiki_page = Wiki.query.filter(Wiki.mark==0).order_by(Wiki.id.desc()).paginate(p,count)
	return render_template('wiki.html',wikis=wiki_page.items)
	
@app.route('/wiki/<int:wkid>')
def wiki_content(wkid):
	# record PV
	pv = Wiki_Stat.query.filter(Wiki_Stat.wkid==wkid).filter(Wiki_Stat.operate=='pv').first()
	count = 1
	if pv: 
		count = pv.count = pv.count+1
		db.session.merge(pv)
	else : 
		db.session.add(Wiki_Stat(wkid))
	db.session.commit()
	# end
	
	stat={}
	stat['pv']=count
	stat['prev']=Wiki.query.filter(Wiki.id==wkid-1).filter(Wiki.mark==0).first()
	stat['next']=Wiki.query.filter(Wiki.id==wkid+1).filter(Wiki.mark==0).first()
	
	wiki = Wiki.query.filter(Wiki.id==wkid).filter(Wiki.mark==0).first()
	return render_template('wiki_content.html',wiki=wiki,stat=stat)

# product module
@app.route('/product')
def product():
	p,count = int(request.args.get('p','1')),40
	ps_page = Product.query.filter(Product.mark==0).order_by(Product.id.desc()).paginate(p,count)
	return render_template('product.html', products=ps_page.items)

@app.route('/product/<int:pid>')
def product_detail(pid):
	# record PV
	pv = Product_Stat.query.filter(Product_Stat.pid==pid).filter(Product_Stat.operate=='pv').first()
	count = 1
	if pv: 
		count = pv.count = pv.count+1
		db.session.merge(pv)
	else : 
		db.session.add(Product_Stat(pid))
	db.session.commit()
	# end
	
	stat={}
	stat['pv']=count

	product = Product.query.filter(Product.id==pid).first()
	attr = Product_Attr.query.filter(Product_Attr.pid==pid).first()
	return render_template('product_detail.html',product=product,attr=attr,stat=stat)

# admin module
@app.route('/admin')
def admin():
	if not session.get('login', False):return redirect(url_for('login'))
	return render_template('admin.html')
	
# admin product
@app.route('/admin/product', methods=['POST','GET'])
def admin_product():
	if not session.get('login', False):return redirect(url_for('login'))
	form = ProductForm(request.form)
	
	current_app.logger.info("vali:"+str(form.validate()))
	if request.method == 'POST' and form.validate():
		current_app.logger.info("true")
		
		prod = Product(form.title.data, form.image.data, form.price.data, form.price2.data, form.content.data)
		db.session.add(prod)
		db.session.commit()
		
		db.session.add(Product_Attr(prod.id,request.form['code1'], request.form['code2'], request.form['code3'], request.form['factory_name'], request.form['factory_addr'], request.form['factory_phone'], request.form['ingredients'], request.form['net_weight'], request.form['store_way'], request.form['origine'], request.form['shief_life'], request.form['food_addiitive'], request.form['packing'], request.form['brand'], request.form['series'], request.form['weight'], request.form['kind'], request.form['grade'], request.form['plucking_time'], request.form['growing_season'], request.form['organic_food']))
		db.session.commit()

	return render_template('admin_product_insert.html')
	
@app.route('/admin/product/<int:pid>', methods=['POST','GET'])
def admin_product_update(pid):
	if not session.get('login', False):return redirect(url_for('login'))
	product = Product.query.filter(Product.id==pid).first()
	form = ProductForm(request.form)	
	if request.method == 'POST' and form.validate():
		product.title = form.title.data
		product.content = form.content.data
		product.image = form.image.data
		product.price = form.price.data
		db.session.merge(product)
		db.session.commit()
	return render_template('admin_product_update.html', product=product)
	
@app.route('/admin/products')
def admin_products():
	if not session.get('login', False):return redirect(url_for('login'))
	p,count = int(request.args.get('p','1')),40
	ps_page = Product.query.filter(Product.mark==0).order_by(Product.id.desc()).paginate(p,count)
	return render_template('admin_products.html', products=ps_page.items)

# admin wiki
@app.route('/admin/wiki', methods=['POST','GET'])
def admin_wiki():
	if not session.get('login', False):return redirect(url_for('login'))
	
	form = WikiForm(request.form)
	if request.method == 'POST' and form.validate():
		db.session.add(Wiki(form.name.data, form.email.data, form.title.data, form.content.data,form.image.data,request.remote_addr,form.repost.data))
		db.session.commit()
	
	user = {'name':'bsspirit','email':'bsspirit@gmail.com'}
	return render_template('admin_wiki_insert.html', user=user)
	
@app.route('/admin/wiki/<int:id>', methods=['POST','GET'])
def admin_wiki_update(id):
	if not session.get('login', False):return redirect(url_for('login'))
	
	wiki = Wiki.query.filter(Wiki.id==id).first()
	form = WikiForm(request.form)	
	if request.method == 'POST' and form.validate():
		wiki.name = form.name.data
		wiki.email = form.email.data
		wiki.title = form.title.data
		wiki.content = form.content.data
		wiki.image = form.image.data
		wiki.ip = request.remote_addr
		wiki.repost = form.repost.data
		db.session.merge(wiki)
		db.session.commit()
		
	user = {'name':'bsspirit','email':'bsspirit@gmail.com'}
	return render_template('admin_wiki_update.html', user=user, wiki=wiki)

@app.route('/admin/wikis')
def admin_wikis():
	if not session.get('login', False):return redirect(url_for('login'))
	
	p,count = int(request.args.get('p','1')),40
	wiki_page = Wiki.query.filter(Wiki.mark==0).order_by(Wiki.id.desc()).paginate(p,count)
	return render_template('admin_wikis.html',wikis=wiki_page.items)

# system module	
@app.errorhandler(404)
def page_not_found(e):
	return render_template('404.html'), 404
	
# test module
@app.route('/test/product')
def test_product():
	return render_template('product_detail _test.html')


if __name__ == '__main__':
	app.run()
