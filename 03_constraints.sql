-- 1. Create a table named "customers" with the following columns: 
-- customer_email(varchar, primary key), first_name (varchar), last_name (varchar), , and address (varchar).

use test_db;

create table customers(
    customer_email varchar(100) primary key,
    first_name varchar(20) not null,
    last_name varchar(20) not null,
    address varchar(200) not null
);

desc customers;

-- 2. Create a table named "orders" with the following columns: 
-- order_id (integer, primary key), order_date (date), fk_customer_email (varchar) --> customers(customer_email), and total_amount (decimal), and status (varchar)..

create table orders(
    order_id int primary key,
    order_date date not null,
    fk_customer_email varchar(100),
    total_amount decimal(10, 2) not null check (total_amount>0),
    status varchar(20) default "Order Placed",
    foreign key (fk_customer_email) references customers(customer_email)
);

desc orders;

-- 3. Create a table named "products" with the following columns: 
-- product_id (integer, primary key), product_name (varchar), category (varchar), price (decimal), and description (text).

create table products(
    product_id int primary key,
    product_name varchar(100) not null,
    category varchar(100) not null default "Others",
    price decimal(10,2) not null check (price>0),
    description text not null
);

desc products;

-- 4. Create a table named "order_items" with the following columns: 
-- order_id (integer) --> orders(order_id), product_id(integer) --> products(product_id)

create table order_items(
    fk_order_id int,
    fk_product_id int,
    foreign key (fk_order_id) references orders(order_id),
    foreign key (fk_product_id) references products(product_id)
);

desc order_items;