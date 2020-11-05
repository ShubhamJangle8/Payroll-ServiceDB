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
('Charlie',30000000.00, '2020-1-13');

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
    
#UC8
	alter table employee_payroll
    add phone numeric(10) not null after name,
    add address varchar(100) not null after phone,
    add department varchar(50) not null after address;
    
#UC9
	alter table employee_payroll 
    change column salary basic_pay double,
    add deductions double not null after basic_pay,
    add taxable_pay double not null after deductions,
    add tax double not null after taxable_pay,
    add net_pay double not null after tax;
    select * from employee_payroll;
    
#UC10
	insert into employee_payroll (name,phone, address, department, gender, basic_pay, deductions, taxable_pay, tax, net_pay, start) values
	('Terisa', 9999999999, "US", 'Marketing', 'F', 40000000, 50000, 200000, 10000, 200000, '2020-05-21'),
    ('Terisa', 9999999999, "US", 'Sales', 'F', 40000000, 50000, 200000, 10000, 200000, '2020-05-21');