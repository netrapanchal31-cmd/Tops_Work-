import sqlite3,sys

# create connection, than cursor, than query, than execute,than result fetch, close connection 
conn=sqlite3.connect("Example_1.db")
if not conn:
    sys.exit(0)
else:

    print("Database created successfully")
    cur=conn.cursor()
    #sql="create table IF NOT EXISTs student_1(SID int,sname varchar(50),age int)"
    #sql="Insert into student_1 values (101,'Netra',20)"
    cur.execute("select * from student_1")
    lst=cur.fetchall()
    print(lst)
    conn.commit()
    cur.close()
    conn.close()
