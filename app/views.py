from app import app

@app.route('/')
def hello_world():
    return 'Hello World!  This is a flask app.'