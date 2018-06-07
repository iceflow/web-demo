
import logging
from logging.handlers import RotatingFileHandler

from flask import Flask
from flask import request
from werkzeug import secure_filename

import os
from flask import Flask, request, redirect, url_for
from werkzeug.utils import secure_filename

UPLOAD_FOLDER = '/data/applications/web-demo/flask-by-example/uploads'
ALLOWED_EXTENSIONS = set(['txt', 'pdf', 'png', 'jpg', 'jpeg', 'gif'])

app = Flask(__name__)
app.config['UPLOAD_FOLDER'] = UPLOAD_FOLDER

@app.route('/login', methods=['GET', 'POST'])
def login():
    if request.method == 'POST':
        return do_the_login()
    else:
        return show_the_login_form()

def do_the_login():
    '''
    f = request.files['file']
    filename = secure_filename(f.filename)
    f.save(os.path.join(app.config['UPLOAD_FOLDER'], filename))
    '''
    return "do_the_login"

def show_the_login_form():
    return "show_the_login_form"

@app.route('/')
def hello():
    return "Hello World!"

@app.route('/<name>')
def hello_name(name):
    return "Hello {}!".format(name)


if __name__ == '__main__':
    #logger = logging.getLogger('werkzeug')
    #handler = logging.FileHandler('access.log')
    #logger.addHandler(handler)

    #app.logger.addHandler(handler)
    app.run(host='0.0.0.0', port=80, debug = False)
