create database offices
use offices
create table employee(rollno int,salary int,age int)
select * from employee
insert into employee (rollno,salary,age) values
(101,500000,28),
(102,250000,25),
(103,750000,24),
(104,300000,22)
select * from employee where rollno=101
select * from employee where rollno in (101,102)
select * from employee where salary=50000 limit 2
select count(*) from employee
select count(rollno) as temp from employee
select sum(salary) from employee
select avg(salary) from employee
select max(salary) from employee
select min(salary) from employee
select * from employee where (salary=500000 and rollno=101)
select * from employee where (salary=500000 or rollno=101)
select * from employee where not(salary=50000 or rollno=102)
delete from employee;