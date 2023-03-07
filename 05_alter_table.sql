-- 1. Alter table named "employees" with the following: 
-- remove name column
alter table employees
drop column name;

-- add mobile_phone (varchar)
alter table employees
add mobile_phone varchar(10);

-- mark first_name, email and hire_date as not_null
alter table employees
modify column first_name varchar(20) not null;

alter table employees
modify column email varchar(100) not null;

alter table employees
modify column hire_date date not null;

-- set default salary to 25000.00
alter table employees
modify column salary decimal(8,2) default 25000.00;

-- add primary key(employee_id)
alter table employees
add primary key(employee_id);