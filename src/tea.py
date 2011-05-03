# -*- coding: utf-8 -*-
from flask import Flask, render_template, session, redirect, url_for, current_app, request, flash
from db import db, Message, Wiki
from form import MessageForm, LoginForm, WikiForm
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
	
@app.route('/wiki')
def wiki():
	p,count = int(request.args.get('p','1')),20
	wiki_page = Wiki.query.filter(Wiki.mark==0).order_by(Wiki.id.desc()).paginate(p,count)
	return render_template('wiki.html',wikis=wiki_page.items)
	
@app.route('/wiki/<int:wkid>')
def wiki_content(wkid):
	wiki = Wiki.query.filter(Wiki.id==wkid).filter(Wiki.mark==0).first()
	return render_template('wiki_content.html',wiki=wiki)
	
@app.route('/message', methods=['POST','GET'])
def message():
	form = MessageForm(request.form)	
	if request.method == 'POST' and form.validate():
		db.session.add(Message(form.name.data,form.email.data,form.content.data,request.remote_addr))
		db.session.commit()

	p,count = int(request.args.get('p','1')),10
	messags_page = Message.query.filter(Message.mark==0).order_by(Message.id.desc()).paginate(p,count)	
	return render_template('message.html',messages=messags_page.items, form=form)

@app.route('/sitemap')
def sitemap():
	return render_template('sitemap.html')
	
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

# admin module
@app.route('/admin')
def admin():
	if not session.get('login', False):return redirect(url_for('login'))
	return render_template('admin.html')
	
@app.route('/admin/wiki', methods=['POST','GET'])
def admin_wiki():
	if not session.get('login', False):return redirect(url_for('login'))
	
	form = WikiForm(request.form)
	current_app.logger.info(form.title.data)
	
	if request.method == 'POST' and form.validate():
		db.session.add(Wiki(form.name.data, form.email.data, form.title.data, form.content.data,form.image.data,request.remote_addr,form.repost.data))
		db.session.commit()
	
	user = {'name':'bsspirit','email':'bsspirit@gmail.com'}
	return render_template('admin_wiki.html', user=user)

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


if __name__ == '__main__':
	app.run()
