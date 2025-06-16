create database offices
use offices
create table employee(rollno int,salary int,age int)
select * from employee
insert into employee (rollno,salary,age) values
(101,500000,28),
(102,250000,25)
select * from employee where rollno=101
select * from employee where rollno in (101,102)
select * from employee where salary=50000 limit 2
delete from employee;