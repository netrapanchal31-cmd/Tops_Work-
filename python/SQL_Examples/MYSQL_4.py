import mysql.connector
conn = mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="tops_labtask"
)

cur = conn.cursor()

def Insert_data():
    Cid=int(input("Enter company ID: "))
    Cname=input("Enter Company name: ")
    City=input("Enter City: ")
    State=input("Enter state: ")

    cur.execute("insert into company values = (%s,%s,%s,%s"),(Cid,Cname,City,State)
print("Data Inserted Successfully")


    
