create database foreignjoin
use foreignjoin
create table salaryy(sid int,srange int)
create table officesss(regid int,ename varchar(30) not null,erole varchar(20),salaryid int)
create table officedetailssss(sno int,regid int,age int,dob date,place varchar(30))
select * from salaryy
select * from officesss
select * from officedetailssss
insert into salaryy(sid,srange) values
(101,40000),
(102,50000),
(103,60000),
(104,70000)
insert into officesss(regid,ename,erole,salaryid) values
(111,"durai","frontend",101),
(112,"kamal","backend",102),
(113,"raj","devoloper",103),
(114,"ram","testing",104)
insert into officedetailssss(sno,regid,age,dob,place) values
(1,110,"23","1998-01-20","chennai"),
(2,112,"23","1999-01-20","theni"),
(3,11000,"24","1999-01-22","madurai"),
(4,114,"25","1999-01-23","trichy")
use primaryjoin
select * from officesss
select * from officedetailssss
select a.regid,a.ename,a.erole,a.salaryid,b.sno,b.regid,b.age,b.dob,b.place
from officesss as a
right join officedetailssss as b on a.regid=b.regid 
