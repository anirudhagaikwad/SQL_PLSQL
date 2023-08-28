/*De-normalization is the process of intentionally introducing redundancy into a database by combining tables or adding redundant data. This is done to optimize query performance, simplify data retrieval, and reduce the number of joins required. While normalization aims to eliminate redundancy and anomalies, de-normalization trades some of those benefits for improved query performance in certain scenarios.
*/
--Here's an example SQL script that demonstrates de-normalization:
-- Create normalized tables
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    CustomerEmail VARCHAR(100)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

-- Insert sample data
INSERT INTO Customers (CustomerID, CustomerName, CustomerEmail)
VALUES
    (1, 'John Doe', 'john@example.com'),
    (2, 'Jane Smith', 'jane@example.com');

INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount)
VALUES
    (101, 1, '2023-01-15', 150.00),
    (102, 2, '2023-02-10', 200.00);

-- Query to retrieve customer orders with joins
SELECT c.CustomerName, o.OrderID, o.OrderDate, o.TotalAmount
FROM Customers c
JOIN Orders o ON c.CustomerID = o.CustomerID;


--In this normalized structure, we have separate tables for "Customers" and "Orders," and they're linked using foreign keys.

--Now, let's demonstrate de-normalization by adding redundant data:

-- Create a de-normalized table
CREATE TABLE DenormalizedOrders (
    OrderID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2)
);

-- Insert sample data with redundant information
INSERT INTO DenormalizedOrders (OrderID, CustomerName, OrderDate, TotalAmount)
VALUES
    (101, 'John Doe', '2023-01-15', 150.00),
    (102, 'Jane Smith', '2023-02-10', 200.00);

-- Query the de-normalized table
SELECT OrderID, CustomerName, OrderDate, TotalAmount
FROM DenormalizedOrders;

/*
In this de-normalized table, we've combined the "Customers" and "Orders" tables and added redundant customer information. This can improve query performance because you don't need to perform a join to get the customer's name.

However, de-normalization comes with trade-offs. Redundancy can lead to data inconsistencies if updates aren't carefully managed. It can also increase storage requirements and complicate data maintenance.

Remember that de-normalization is a strategy used selectively based on specific performance requirements. It's crucial to weigh the benefits against the drawbacks and use it judiciously.*/
