create database primarysq
use primarysq
create table department(deptid int primary key,deptname varchar(20))
create table employee(empid int primary key,deptid int,empname varchar(20),FOREIGN KEY(deptid) REFERENCES department(deptid))
create table project(empid int primary key,projectname varchar(20),projectid int,FOREIGN KEY(empid) REFERENCES employee(empid))
select * from department
select * from employee
insert into department(deptid,deptname) values
(100,"HR"),
(201,"IT"),
(301,"Finance"),
(401,"Marketing")
insert into employee(empid,deptid,empname) values
(501,100,"Alice"),
(502,201,"Bob"),
(503,301,"Charlie"),
(504,401,"David")
insert into project(empid,projectname,projectid) values
(501,"Alpha",51),
(502,"Beta",52),
(503,"gamma",53),
(504,"delta",54)
use primarysq
select * from employee
select * from project
select a.empid,a.deptid,a.empname,b.empid,b.projectname,b.projectid
from employee as a
right join project as b on a.empid=b.empid
delete from project where empid=501

