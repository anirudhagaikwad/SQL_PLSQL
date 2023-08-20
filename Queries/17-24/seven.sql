/*
Create table customers with columns like 'customer_id', 'first_name', 'last_name', 'eamil' and ' phone'
Grant SELECT privilege to a user on customers table.

*/

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100),
    phone VARCHAR(20)
);

-- grant select privilege to user

GRANT SELECT ON customers TO "vaibhavi";

