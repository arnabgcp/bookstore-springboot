from flask import request
from flask import Flask, redirect
import os
import mysql.connector

app = Flask(__name__)





@app.route('/deletebook/<id>', methods = ['GET'])
def api_echo(id):
     bid=id
     mydb = mysql.connector.connect(
       host=os.environ.get('DB_HOST'),
       user=os.environ.get('MYSQL_USERNAME'),
       password=os.environ.get('MYSQL_PASSWORD'),
       database="Bookstore")
     mycursor = mydb.cursor()
     #sql = "UPDATE book SET title = " + title +", author = " + author +" , price = "+ price +" WHERE book_id = " + bid 
     sql = ("delete from book where book_id = %s " % (bid))
     mycursor.execute(sql)

     mydb.commit()
     return redirect("/listallbooks")

@app.route('/health')
def checkhealth():
     return "healthy"



if __name__== "__main__":
                app.run(host ='0.0.0.0', port = 8080, debug = True)
