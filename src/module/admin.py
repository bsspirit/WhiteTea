# -*- coding: utf-8 -*-
from flask import Module, render_template, session, redirect, url_for, current_app, request

module = Module(__name__)

@module.route('/login')
def login():
	return render_template('admin/login.html')

