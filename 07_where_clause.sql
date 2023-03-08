use test_db;

-- 1. Write a query to retrieve all the data from the "employees" table where the employee_id is equal to 5.
select * 
from employees 
where employee_id = 5;

-- 2. Write a query to retrieve the first and last names of all employees from the "employees" table who were hired in the year 2022.
select * 
from employees 
where hire_date >= 2022-01-01;

-- 3. Write a query to retrieve the first and last names of all employees from the "employees" table who have a salary greater than 50,000.
select first_name, last_name 
from employees 
where salary > 50000;

-- 4. Write a query to retrieve the product names and prices of all products from the "products" table that have a price greater than 45000.
select product_name, price 
from products 
where price > 45000;

-- 5. Write a query to retrieve the order dates and total amounts of all orders from the "orders" table that have a total amount greater than 50000.
select order_date, total_amount 
from orders 
where total_amount > 50000;

-- 6. Write a query to retrieve the first and last names of all customers from the "customers" table who live in Downtown.
select first_name, last_name 
from customers 
where address = 'Downtown';

-- 7. Write a query to retrieve the order dates and total amounts of all orders from the "orders" table that were placed in the month of January.
select order_date, total_amount
from orders
where MONTH(order_date) = 1;

-- 8. Write a query to retrieve the order dates and total amounts of all order from the "order" table that have a status of "Pending".
select order_date, total_amount, status
from orders
where status = 'Pending';

-- 9. Write a query to retrieve the product names and prices of all products from the "products" table that belong to the "Tablet" category and have a price less than 28000.
select product_name, price
from products
where category = 'Tablet'
and price < 28000;


