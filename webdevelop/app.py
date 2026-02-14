from flask import Flask,render_template
app=Flask(__name__)
@app.route('/')
def hello_world():
    return "<p>hello world</p>"
@app.route("/love")
def love():
    return '<p>I love you</p>'
@app.route("/home")
def home():
    return render_template("index.html")
if __name__ == '__main__':
    app.run(debug=True)