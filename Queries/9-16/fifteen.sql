/*
Design a database to track product inventory and its suppliers.
In this example, we have a table Products that stores product information (product_id, product_name), and a table Suppliers that stores supplier 
details (supplier_id, supplier_name). Additionally, there's a table Inventory that links products to suppliers and stores 
quantity (product_id, supplier_id, quantity).

*/

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100)
);

CREATE TABLE Suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100)
);

CREATE TABLE Inventory (
    product_id INT,
    supplier_id INT,
    quantity INT,
    PRIMARY KEY (product_id, supplier_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id),
    FOREIGN KEY (supplier_id) REFERENCES Suppliers(supplier_id)
);
/*
Functional Dependency: product_id, supplier_id -> quantity
 The functional dependency indicates that for each combination of product and supplier, there is a unique quantity value. 
 This design ensures that the inventory for each product from a specific supplier is uniquely identified.
*/
 
 