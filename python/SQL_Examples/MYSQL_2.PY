import mysql.connector
conn=mysql.connector.connect(
    host="localhost",
    user="root",
    password="root",
    database="class_work"
    )
if conn:
    print("Database connected successfully")
    cur=conn.cursor()
    sql="insert into company values (64, 'Lata','Ahmedabad','Gujarat'), (65,'Neha','Surat','Gujarat')"
    cur.execute(sql)

    conn.commit()

    print("Data inserted successfully")