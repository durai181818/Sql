create database newbatchsql
use newbatchsql
create table student(regid int,sname varchar(20),age int,dob date)
select * from student
alter table student change regid studentid int
alter table student add column place varchar(20)
alter table student drop column age
insert into student (studentid,sname,dob,place) values
(101,"durai","1999-05-14",null),
(102,"drai","1999-05-14","chennai")
update student set place="theni" where studentid=102
delete from student where studentid=101
truncade table student

