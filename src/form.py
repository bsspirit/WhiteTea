from wtforms import Form, BooleanField, TextField, TextAreaField, validators

class MessageForm(Form):
	name = TextField('name', [validators.Length(min=1, max=16), validators.Required()])
	email = TextField('email', [validators.Length(min=3, max=128),validators.Email(), validators.Required()])
	content = TextAreaField('content', [validators.Length(min=3, max=3200),validators.Required()])


