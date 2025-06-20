create database primaryjoin
use primaryjoin
create table salary(sid int primary key,srange int)
create table office(regid int primary key,ename varchar(30) not null,erole varchar(20),salaryid int, FOREIGN KEY (salaryid) REFERENCES salary(sid))
create table officedetails(sno int primary key,regid int,age int,dob date,place varchar(30),FOREIGN KEY(regid) REFERENCES office(regid))
select * from salary
select * from office
select * from officedetails
insert into salary(sid,srange) values
(101,40000),
(102,50000),
(103,60000),
(104,70000)
insert into office(regid,ename,erole,salaryid) values
(111,"durai","frontend",101),
(112,"kamal","backend",102),
(113,"raj","devoloper",103),
(114,"ram","testing",104)
insert into officedetails(sno,regid,age,dob,place) values
(2,112,"23","1999-01-20","theni"),
(3,113,"24","1999-01-22","madurai"),
(4,114,"25","1999-01-23","trichy")
use primaryjoin
select * from office
select * from officedetails
select a.regid,a.ename,a.erole,a.salaryid,b.sno,b.regid,b.age,b.dob,b.place
from office as a
right join officedetails as b on a.regid=b.regid 
union all
select a.regid,a.ename,a.erole,a.salaryid,b.sno,b.regid,b.age,b.dob,b.place
from office as a
right join officedetails as b on a.regid=b.regid

select a.regid,a.ename,a.erole,a.salaryid,b.sno,b.regid,b.age,b.dob,b.place
from office as a,officedetails as b where a.regid=b.regid




