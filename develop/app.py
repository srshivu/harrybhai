from flask import Flask,render_template,request
app=Flask(__name__,template_folder='templates',static_folder='static')
@app.route('/shivu')
def shivu():
    return render_template('index.html')
@app.route("/")
def home():
    return "shivu"
@app.route("/about",methods=["GET","POST"])
def about():
    if request.method=="POST":
        name = request.form["name"]
        password = request.form["password"]
        return f"the costomer name is {name} and password is {password}"
    
    return render_template("about.html")

if __name__=="__main__":

    app.run(debug=True)

