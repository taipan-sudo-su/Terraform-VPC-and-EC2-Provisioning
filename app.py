from flask import Flask

app = Flask(__name__)

@app.route("/")
def hello():
    return "This is a terraform project to learn how vpc is created and how provisioners work   MY github username  'https://github.com/taipan-sudo-su' "

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=80)