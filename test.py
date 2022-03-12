import mysql.connector as sqltor

mycon=sqltor.connect(host='localhost',user='root',password='038869')
cursor=mycon.cursor(buffered=True)

cmd1='create database drishti'
cmd2='use drishti'
cmd3='create table users(id varchar(10),name varchar(25),loc varchar(10),phone varchar(10),Remarks varchar(10))'
cmd3='create table usrno(count int)'
cmd4='insert into usrno values(0)'
licmd=[cmd1,cmd2,cmd3,cmd4]
for i in licmd:
	cursor.execute(i)
	mycon.commit()

print('DONE.....')
input()
