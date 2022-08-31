from flask import Flask

app = Flask(__name__)

trufflehog_checks_api = "http://secret-service/"

@app.route("/")
def hello_world():
    return "This is a response from the ms2 service."
