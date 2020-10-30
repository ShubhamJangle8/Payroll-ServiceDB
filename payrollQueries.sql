#start
show databases;

#UC1
create database payroll_service;
show databases;
use payroll_service;
select database();

#UC2
create table employee_payroll
(
id              INT unsigned NOT NULL AUTO_INCREMENT,
name            VARCHAR(150) NOT NULL,
salary          Double NOT NULL,
start           DATE NOT NULL,
PRIMARY KEY      (id)
);
describe employee_Payroll;

#UC3
insert into employee_payroll (name, salary ,start) VALUES
('BILL', 10000000.00, '2018-01-03'),
('Terisa',20000000.00, '2019-01-03'),
('Charlie',30000000.00, '2020-12-13');

#UC4
select * from employee_payroll;

#UC5
select salary from employee_payroll where name = 'BILL';
select salary from employee_payroll where start between cast('2018-01-03' as date) and date(NOW());
select * from employee_payroll where start between cast('2018-01-03' as date) and date(NOW());

#UC6
alter table employee_payroll add gender char(1) after name;
select * from employee_payroll;
update employee_payroll set gender = 'F' where name = 'Terisa';
update employee_payroll set gender = 'M' where name = 'BILL' OR name = 'Charlie';
select * from employee_payroll;
describe employee_payroll;

#UC7
select AVG(salary) from employee_payroll group by gender;
select gender, AVG(salary) from employee_payroll group by gender;
select gender, SUM(salary) from employee_payroll group by gender;
select gender, COUNT(salary) from employee_payroll group by gender;
select gender, MIN(salary) from employee_payroll group by gender;
select gender, MaX(salary) from employee_payroll group by gender;
select gender, MaX(salary) from employee_payroll where gender = 'F' group by gender;