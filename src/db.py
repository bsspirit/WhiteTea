from flask import Flask
from flaskext.sqlalchemy import SQLAlchemy
from datetime import datetime

app = Flask(__name__)
app.config['SQLALCHEMY_DATABASE_URI'] = 'mysql://tea:tea@localhost/tea'

db = SQLAlchemy(app)

class User(db.Model):
	__tablename__ = 't_tea_user'
	id = db.Column(db.Integer, primary_key=True)
	username = db.Column(db.String(16))
	password = db.Column(db.String(16))
	email = db.Column(db.String(64))
	create_date = db.Column(db.DateTime, default=datetime.now())
	ip = db.Column(db.String(32))
	mark = db.Column(db.Integer,default=0)
	
	def __init__(self, username, password, email, ip):
		self.name = name
		self.email = email
		self.content = content
		self.ip = ip

	def __repr__(self):
		return '%s: %s' % (self.username, self.email)


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
		self.title = title
		self.content = content
		self.image = image
		self.ip = ip
		if repost : self.repost = repost

	def __repr__(self):
		return '%s: %s' % (self.name, self.content)
		
class Wiki_Stat(db.Model):
	__tablename__ = 't_tea_wiki_stat'
	id = db.Column(db.Integer, primary_key=True)
	wkid = db.Column(db.Integer)
	count = db.Column(db.Integer,default=1)
	operate = db.Column(db.String(8),default='pv') #pv,up,down,repost
	
	def __init__(self, wkid, count=1, operate='pv'):
		self.wkid=wkid
		self.operate = operate
		self.count = count
		
	def __repr__(self):
		return 'wkid=%s:%s,%s' % (self.wkid, self.operate, self.count)		
	
		
if __name__ == '__main__':
	db.drop_all()
	db.create_all()
