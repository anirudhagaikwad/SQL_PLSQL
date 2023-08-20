/*
Create table customers with columns like 'customer_id', 'first_name', 'last_name', 'eamil' and ' phone'.
Add multiple records in it.

create table products with attributes like: product_id, product_name, price,  stock_quantity
Add multiple records in it.

Create orders table with foreign key customer_id from customers table, add one order record in orders table.

*/

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- insert record
INSERT INTO customers (customer_id, first_name, last_name, email, phone)
VALUES (1, 'John', 'Doe', 'john@example.com', '555-123-4567'),
(2, 'Siya', 'Shashtri', 'siya@example.com', '543-163-7864'),
(3, 'Rehan', 'Mishra', 'rehan@example.com', '643-183-9462');


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    stock_quantity INT
);

-- insert multiple records 

INSERT INTO products (product_id, product_name, price, stock_quantity)
VALUES
    (1, 'Widget A', 19.99, 100),
    (2, 'Widget B', 24.99, 75),
    (3, 'Widget C', 29.99, 50);

-- create orders table with foreign key customer_id from customers table

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);

-- insert record in order table

INSERT INTO orders (order_id, customer_id, order_date, total_amount)
VALUES (1, 1, '2023-07-28', 43.98);

select * from orders;
