from app import app

@app.route('/flask-test')
def hello_world():
    return 'Hello World!  This is a flask app.'