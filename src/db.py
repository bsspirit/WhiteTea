from flask import Flask
from flaskext.sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://tea:tea@localhost/tea'

db = SQLAlchemy(app)

class Message(db.Model):
	__tablename__ = 't_tea_message'
	id = db.Column(db.Integer, primary_key=True)
	name = db.Column(db.String(16),default="guest")
	email = db.Column(db.String(64))
	content = db.Column(db.Text)
	create_date = db.Column(db.DateTime, default=datetime.now())
	ip = db.Column(db.String(32))
	mark = db.Column(db.Integer,default=0)
	
	def __init__(self, name, email, content, ip):
		self.name = name
		self.email = email
		self.content = content
		self.ip = ip

	def __repr__(self):
		return '%s: %s' % (self.name, self.content)
		
class Wiki(db.Model):
	__tablename__ = 't_tea_wiki'
	id = db.Column(db.Integer, primary_key=True)
	name = db.Column(db.String(16),default="admin")
	email = db.Column(db.String(64),default="bsspirit@gmail.com")
	title = db.Column(db.String(16), unique=True)
	content = db.Column(db.Text)
	image = db.Column(db.String(256))
	repost = db.Column(db.String(256))
	create_date = db.Column(db.DateTime, default=datetime.now())
	ip = db.Column(db.String(32))
	mark = db.Column(db.Integer,default=0)
	
	def __init__(self, name, email, title, content, image, ip, repost=None):
		self.name = name
		self.email = email
		self.content = content
		self.ip = ip
		if repost : self.repost = repost

	def __repr__(self):
		return '%s: %s' % (self.name, self.content)
	
	
		
if __name__ == '__main__':
	db.drop_all()
	db.create_all()
