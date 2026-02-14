from flask import Flask,render_template,request
app=Flask(__name__)
@app.route("/")
def home():
    return render_template("index.html")
@app.route("/child")
def child():
    name=request.args.get("name")
    
    return render_template("client.html",name=name)
app.run(debug=True)