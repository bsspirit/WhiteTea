# -*- coding: utf-8 -*-
from flask import Flask, render_template, session, redirect, url_for, current_app, request, flash
from db import db, Message
from form import MessageForm

app = Flask(__name__)
app.debug = True
app.config.from_object(__name__)
app.secret_key = 'A0Zr31j/3yX R~XHH!jmN]LWX/,?RT'

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
	
@app.errorhandler(404)
def page_not_found(e):
	return render_template('404.html'), 404


if __name__ == '__main__':
	app.run()
