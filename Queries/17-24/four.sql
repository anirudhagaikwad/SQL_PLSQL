/*
Create table customers with columns like 'customer_id', 'first_name', 'last_name', 'email' and ' phone'
Insert one record in customers table and display all the records in it.
Delete specific customer's record
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
VALUES (1, 'John', 'Doe', 'john@example.com', '555-123-4567');

-- display records
select * from customers;

-- delete record
DELETE FROM customers
WHERE customer_id = 1;

-- display records
select * from customers;

