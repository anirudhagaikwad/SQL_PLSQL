/*
Decomposition: Lossy Join Decomposition
Lossy join decomposition involves splitting a table into multiple tables, and when re-joining, some information is lost.

Create table product_attributes with attributes like: product_id, product_name, description, manufacturer, price, category
Decompose the "product_attributes" table into "product_general_info" and "product_details" tables.

*/

-- Original table
CREATE TABLE product_attributes (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  description TEXT,
  manufacturer VARCHAR(50),
  price DECIMAL(10, 2),
  category VARCHAR(50)
);

-- Decomposed tables
CREATE TABLE product_general_info (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  price DECIMAL(10, 2)
);

CREATE TABLE product_details (
  product_id INT PRIMARY KEY,
  description TEXT,
  manufacturer VARCHAR(50),
  category VARCHAR(50)
);

/*
In this example, we decomposed the "product_attributes" table into "product_general_info" and "product_details" tables, 
and some information about the product is lost when rejoining them.
*/
