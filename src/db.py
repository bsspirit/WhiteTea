# -*- coding: utf-8 -*-
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

# product module
class Product(db.Model):
	__tablename__ = 't_tea_product'
	id = db.Column(db.Integer, primary_key=True)
	title = db.Column(db.String(64), unique=True)
	price = db.Column(db.Float)
	price2 = db.Column(db.Float)
	image = db.Column(db.String(256))
	content = db.Column(db.Text)
	create_date = db.Column(db.DateTime, default=datetime.now())
	mark = db.Column(db.Integer,default=0)

	def __init__(self, title, image, price, price2, content):
		self.title = title
		self.image = image
		self.price = price
		self.price2 = price2
		self.content = content
	
	def __repr__(self):
		return '%s:%s,%s' % (self.title, self.price, self.price2)
		
class Product_Attr(db.Model):
	__tablename__ = 't_tea_product_attr'
	id = db.Column(db.Integer, primary_key=True)
	pid = db.Column(db.Integer)
	code1 = db.Column(db.String(32)) #生产许可证编号
	code2 = db.Column(db.String(32)) #卫生许可证编号
	code3 = db.Column(db.String(32)) #产品标准号
	factory_name = db.Column(db.String(64)) #厂名
	factory_addr = db.Column(db.String(64)) #厂址
	factory_phone = db.Column(db.String(64)) #厂家联系方式
	ingredients = db.Column(db.String(64)) #配料表
	net_weight = db.Column(db.String(32)) #净含量(g)
	store_way = db.Column(db.String(64)) #储藏方法
	origine = db.Column(db.String(64)) #产地
	shief_life = db.Column(db.String(32)) #保质期
	food_addiitive = db.Column(db.String(32)) #食品添加剂
	packing = db.Column(db.String(32)) #包装方式
	brand=db.Column(db.String(32)) #品牌
	series=db.Column(db.String(32)) #系列
	weight=db.Column(db.String(32)) #重量(g)
	kind=db.Column(db.String(32)) #白茶种类
	grade=db.Column(db.String(32)) #茶叶等级
	plucking_time=db.Column(db.String(32)) #采摘时间
	growing_season=db.Column(db.String(32)) #茶叶生长季节
	organic_food=db.Column(db.String(32)) #是否为有机食品	
	create_date=db.Column(db.DateTime, default=datetime.now())
	mark=db.Column(db.Integer,default=0)

	def __init__(self, pid, code1, code2, code3, factory_name, factory_addr, factory_phone, ingredients, net_weight, store_way, origine, shief_life, food_addiitive, packing, brand, series, weight, kind, grade, plucking_time, growing_season, organic_food):
		self.pid = pid
		self.code1 = code1
		self.code2 = code2
		self.code3 = code3
		self.factory_name=factory_name
		self.factory_addr=factory_addr
		self.factory_phone=factory_phone
		self.ingredients=ingredients
		self.net_weight=net_weight
		self.store_way=store_way
		self.origine=origine
		self.shief_life=shief_life
		self.food_addiitive=food_addiitive
		self.packing=packing
		self.brand=brand
		self.series=series
		self.weight=weight
		self.kind=kind
		self.grade=grade
		self.plucking_time=plucking_time
		self.growing_season=growing_season
		self.organic_food=organic_food
		
	def __repr__(self):
		return '%s' % (self.pid)
		
class Product_Stat(db.Model):
	__tablename__ = 't_tea_product_stat'
	id = db.Column(db.Integer, primary_key=True)
	pid = db.Column(db.Integer)
	count = db.Column(db.Integer,default=1)
	operate = db.Column(db.String(16),default='pv') #pv,up,down,repost,alipay
	
	def __init__(self, pid, count=1, operate='pv'):
		self.pid=pid
		self.operate = operate
		self.count = count
		
	def __repr__(self):
		return 'pid=%s:%s,%s' % (self.pid, self.operate, self.count)
		
class Product_Image(db.Model):
	__tablename__ = 't_tea_product_image'
	id = db.Column(db.Integer, primary_key=True)
	pid = db.Column(db.Integer)
	image = db.Column(db.String(256))
	number = db.Column(db.Integer, default=1) # 1,2,3,4,5
	size = db.Column(db.Integer) # 110, 160, 310, 0
	create_date = db.Column(db.DateTime, default=datetime.now())

	def __init__(self, pid, image, number, size=0):
		self.pid = pic
		self.image = image
		self.number = number
		self.size = size
	
	def __repr__(self):
		return '%s:%s' % (self.pid, self.image)
		
class Product_Category(db.Model):
	__tablename__ = 't_tea_product_category'
	id = db.Column(db.Integer, primary_key=True)
	cid = db.Column(db.Integer)
	pid = db.Column(db.Integer)
	create_date = db.Column(db.DateTime, default=datetime.now())

	def __init__(self, cid, pid):
		self.cid = cid
		self.pid = pic
	
	def __repr__(self):
		return '%s:%s' % (self.cid, self.pid)

class Category(db.Model):
	__tablename__ = 't_tea_category'
	id = db.Column(db.Integer, primary_key=True)
	title = db.Column(db.String(64), unique=True)
	pid = db.Column(db.Integer)
	create_date = db.Column(db.DateTime, default=datetime.now())

	def __init__(self, title, pid):
		self.title = title
		self.pid = pic
	
	def __repr__(self):
		return '%s:%s' % (self.title, self.pid)
		

# wiki module
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
