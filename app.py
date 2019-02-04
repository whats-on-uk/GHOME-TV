from flask import Flask
from flask import request

app = Flask(__name__)


@app.route('/')
def hello_world():
    return 'Hello World!'


@app.route('/test/')
def hello_world_test():
    return 'Hello World! - test'


@app.route('/login', methods=['POST', 'GET'])
def login():
    print(request)
    request_text = ""
    for key in request.args.keys():
        request_text += str(key)+":"+request.args[key]+"."
    return request_text


if __name__ == '__main__':
    app.run()
