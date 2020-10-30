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