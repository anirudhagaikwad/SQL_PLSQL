/*
Decomposition: Lossless Join Decomposition
Lossless join decomposition involves splitting a table into multiple tables in such a way that it can be reconstructed using joins without 
losing any information.

Create table customer_orders with attributes: order_id, customer_id, order_date, total_price, product_id, product_name, quantity.
Decompose the "customer_orders" table into "orders" and "order_items" tables

*/

-- Original table
CREATE TABLE customer_orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_price DECIMAL(10, 2),
  product_id INT,
  product_name VARCHAR(50),
  quantity INT
);

-- Decomposed tables
CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  order_date DATE,
  total_price DECIMAL(10, 2)
);

CREATE TABLE order_items (
  order_id INT,
  product_id INT,
  product_name VARCHAR(50),
  quantity INT,
  PRIMARY KEY (order_id, product_id)
);

/*
In this example, we decomposed the "customer_orders" table into "orders" and "order_items" tables, and we can join them back together to 
obtain the original data.

*/

