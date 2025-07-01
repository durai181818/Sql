create database offices
use offices
create table employee(rollno int,salary int,age int)
select * from employee
insert into employee (rollno,salary,age) values
(101,500000,28),
(102,250000,25),
(103,50000,26),
(104,null,27)
use offices
select * from employee
create view empviews as select * from employee where salary=500000
select * from empviews
update empviews set age=30 where rollno=101
select distinct * from employee
select * from employee where salary is null
select * from employee where salary is not null
select rollno,ifnull(salary,250000)from employee
truncate table employee
insert into employee (rollno,salary,age) values
(101,500000,28),
(102,250000,25),
(103,50000,26),
(104,null,27)


