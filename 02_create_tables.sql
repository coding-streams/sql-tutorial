-- 1. Create a table named "employees" with the following columns: 
-- employee_id (integer), first_name (varchar), last_name (varchar), email (varchar), hire_date (date), and salary (decimal).

create database test_db;

use test_db;

create table employees(
    employee_id int,
    first_name varchar(40),
    last_name varchar(40),
    email varchar(100),
    hire_date date,
    salary decimal(10, 2)
);

desc employees;