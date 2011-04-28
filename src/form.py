from wtforms import Form, BooleanField, TextField, PasswordField, TextAreaField, validators

class MessageForm(Form):
	name = TextField('name', [validators.Length(min=1, max=16), validators.Required()])
	email = TextField('email', [validators.Length(min=3, max=128),validators.Email(), validators.Required()])
	content = TextAreaField('content', [validators.Length(min=3, max=3200),validators.Required()])

class LoginForm(Form):
	username = TextField('username', [validators.Length(min=3, max=16), validators.Required()])
	password = PasswordField('password', [validators.Length(min=3, max=16), validators.Required()])
	
class WikiForm(Form):
	name = TextField('name', [validators.Length(min=1, max=16), validators.Required()])
	email = TextField('email', [validators.Length(min=3, max=128), validators.Email(), validators.Required()])
	title = TextField('title', [validators.Length(min=3, max=128), validators.Required()])
	image = TextField('image', [validators.Length(min=3, max=128), validators.Required()])
	content = TextAreaField('content', [validators.Length(min=3, max=3200),validators.Required()])
	repost = TextField('repost')
