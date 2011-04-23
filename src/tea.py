# -*- coding: utf-8 -*-
from flask import Flask, render_template, session, redirect, url_for, current_app, Response

#SERVER_PATH='http://dotabook.info/'
#STATIC_PATH='http://1.dotabook.sinaapp.com/static/'

#SERVER_PATH='http://localhost:5000/'
#STATIC_PATH='http://localhost/static/'

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

#@app.route('/sitemap')	
#def sitemap():
#	return render_template('sitemap.xml')

if __name__ == '__main__':
	app.run()
