import mysql.connector
conn=mysql.connector.connect(
    host="localhost",
    username="root",
    password="root",
    database="class_work"
)
if conn:
    print("Database connected successfully")

cur=conn.cursor()
company_name=input("Enter a company name: ")
cur.execute("select * from company where cname = %s",(company_name,))
lst=cur.fetchall()
print(lst)
cur.close()
conn.close()