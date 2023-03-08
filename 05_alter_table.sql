-- 1. Alter table named "employees" with the following: 
-- add mobile_phone (varchar)

use test_db;

alter table employees
add column mobile_phone varchar(10);

desc employees;

-- mark first_name, email and hire_date as not_null
alter table employees
modify column first_name varchar(20) not null;

alter table employees
modify column email varchar(100) not null;

alter table employees
modify column hire_date date not null;

-- set default salary to 25000.00
alter table employees
modify column salary decimal(10,2) default 25000.00;

-- remove mobile_phone
alter table employees
drop column mobile_phone;

-- add primary key(employee_id)
alter table employees
modify column employee_id int primary key;

desc employees;