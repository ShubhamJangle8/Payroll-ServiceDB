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