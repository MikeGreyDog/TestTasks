#!/usr/bin/python
from flask import Flask
from flask import request
 
app = Flask(__name__)
@app.route('/hello', methods=['POST'])
def index():
    if not request.json or not 'username' in request.json:
        abort(400)
    username = request.json['username']
    return "Hello, %s" % username + '\n'

if __name__ == '__main__':
    app.run(debug=True)
