/*
-- Functional decomposition involves breaking a complex table into multiple smaller tables to minimize redundancy and improve data organization.

Create table Order with arrtibutes order_id, customer_id,customer_name,order_date,product_id,product_name,quantity,total_price.
Decompose the "orders" table into three smaller tables: "customers," "products," and "order_items" to reduce redundancy.

*/
-- drop tables if already exists
drop table if exists orders;
drop table if exists customers;
drop table if exists products;
drop table if exists order_items;

-- Original table
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  customer_name VARCHAR(50),
  order_date DATE,
  product_id INT,
  product_name VARCHAR(50),
  quantity INT,
  total_price DECIMAL(10, 2)
);

-- Decomposed tables
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  customer_name VARCHAR(50)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50)
);

CREATE TABLE order_items (
  order_id INT,
  product_id INT,
  quantity INT,
  total_price DECIMAL(10, 2),
  PRIMARY KEY (order_id, product_id)
);

/*
In this example, we decomposed the "orders" table into three smaller tables: "customers," "products," and "order_items" to reduce redundancy.
*/


