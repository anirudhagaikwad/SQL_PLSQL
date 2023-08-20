/*
4NF Schema: Product Sales Database
Problem Statement: Design a database to track sales of products. 
Each product can have multiple sales, and each sale can contain multiple products. Store information about the customer making the purchase.
*/

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    customer_address VARCHAR(200)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    product_category VARCHAR(50)
);

CREATE TABLE Sales (
    sale_id INT PRIMARY KEY,
    customer_id INT,
    sale_date DATE,
    sale_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

CREATE TABLE Sale_Items (
    sale_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (sale_id, product_id),
    FOREIGN KEY (sale_id) REFERENCES Sales(sale_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);
/*
This schema demonstrates 4NF by removing multivalued dependencies between sales and products. 
It achieves this by creating the Sale_Items table to store the many-to-many relationship between sales and products.
*/

