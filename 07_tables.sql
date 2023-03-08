-- Select Database
drop database test_db;

create database test_db;

use test_db;

-- Employees Table
drop table if exists employees;

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    first_name VARCHAR(40) NOT NULL,
    last_name VARCHAR(40),
    email VARCHAR(100) NOT NULL,
    hire_date DATE NOT NULL,
    salary DECIMAL(10 , 2 ) NOT NULL DEFAULT 25000.00
);

insert into employees(employee_id,first_name,last_name,email,hire_date,salary) 
values (1,'Michael',NULL,'michael@mail.com','2022-04-13',84630),
(2,'Trevor','Philips','trevor@mail.com','2022-04-21',25447),
(3,'Franklin','Clinton','franklin@mail.com','2022-04-21',30880),
(4,'Wade','Hebert','wade@mail.com','2022-06-13',83835),
(5,'Lester','Crest','lester@mail.com','2022-07-21',30586),
(6,'Devin','Weston','devin@mail.com','2022-08-27',58948),
(7,'Solomon','Richards','solomon@mail.com','2022-08-27',57935),
(8,'Jimmy',NULL,'jimmy@mail.com','2021-04-22',45375),
(9,'Amanda',NULL,'amanda@mail.com','2022-05-25',41732),
(10,'Floyd',NULL,'floyd@mail.com','2022-06-06',58178);

SELECT 
    *
FROM
    employees;

-- Customers Table
drop table if exists customers;

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    last_name VARCHAR(20),
    address VARCHAR(200) NOT NULL
);

insert into customers(customer_id,first_name,last_name,email,address)
values (1,'Michael',NULL,'michael@mail.com','Downtown'),
(2,'Trevor','Philips','trevor@mail.com','Rockford Hills'),
(3,'Franklin','Clinton','franklin@mail.com','Vinewood'),
(4,'Jimmy',NULL,'jimmy@mail.com','Rockford Hills'),
(5,'Amanda',NULL,'amanda@mail.co','Rockford Hills'),
(6,'Floyd',NULL,'floyd@mail.com','Vinewood'),
(7,'Wade','Hebert','wade@mail.com','Vinewood'),
(8,'Lester','Crest','lester@mail.com','Downtown'),
(9,'Devin','Weston','devin@mail.com','Downtown'),
(10,'Solomon','Richards','solomon@mail.com','Downtown');

SELECT 
    *
FROM
    customers;

-- Products Table
drop table if exists products;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL DEFAULT 'Others',
    price DECIMAL(10 , 2 ) NOT NULL CHECK (price > 0),
    product_desc VARCHAR(500) DEFAULT 'NA'
);

insert into products(product_id,product_name,category,price)
values (1,'iPhone 14','Mobile',71999),
(2,'iPhone 14 Plus','Mobile',80999),
(3,'Pixel 7','Mobile',57099),
(4,'Pixel 7 Pro','Mobile',81199),
(5,'Nothing Phone (1)','Mobile',35999),
(6,'HP Pavilion','Gaming Laptop',62990),
(7,'HP OMEN','Gaming Laptop',160990),
(8,'Asus ROG','Gaming Laptop',90990),
(9,'iPad','Tablet',29990),
(10,'iPad Air','Tablet',53990);

-- Orders Table
drop table if exists orders;

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    order_date DATE NOT NULL,
    fk_customer_id INT,
    total_amount DECIMAL(10 , 2 ) NOT NULL CHECK (total_amount > 0),
    status VARCHAR(20) DEFAULT 'Placed',
    FOREIGN KEY (fk_customer_id)
        REFERENCES customers (customer_id)
);

insert into orders(order_id,order_date,fk_customer_id,total_amount,status)
values(1,'2023-01-12',10,80999,'Delivered'),
(2,'2023-01-20',8,57099,'Placed'),
(3,'2023-01-21',8,81199,'Placed'),
(4,'2023-01-24',7,35999,'Delivered'),
(5,'2023-01-24',2,62990,'Delivered'),
(6,'2023-01-25',10,160990,'Pending'),
(7,'2023-02-02',4,62990,'Placed');

-- Order Items Table
drop table if exists orders_items;

CREATE TABLE order_items (
    fk_order_id INT,
    fk_product_id INT,
    FOREIGN KEY (fk_order_id)
        REFERENCES orders (order_id),
    FOREIGN KEY (fk_product_id)
        REFERENCES products (product_id)
);

insert into order_items(fk_order_id, fk_product_id)
values (1,2),
(2,3),
(3,4),
(4,5),
(5,6),
(5,3),
(6,7),
(7,6);