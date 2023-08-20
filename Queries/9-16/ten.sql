/*
1 NF Decomposition:
Create table Books with attributes book_id, title, category_id, author_id, price, published_date
Create table Authors with attributes author_id, author_name.
Create table Categories with attributes category_id, category_name.

We assume that each book has only one author. However, in real-world scenarios, a book may have multiple authors. 
So, we'll decompose the Books table to remove this redundancy.

Decompose to 2NF:
In 1NF, we separated the multi-valued attribute (authors) into a new table. Now, let's remove the partial dependency by separating book price 
from the Books table to a new table.

Decompose to 3NF:
In 2NF, we removed partial dependency. Now, let's remove the transitive dependency by creating a new table for categories.

Decompose to BCNF:
In 3NF, we removed transitive dependency. Now, let's create a new table for book details that are dependent on both the book_id and author_id.

*/

-- Create Books table
CREATE TABLE Books (
    book_id INT PRIMARY KEY,
    title VARCHAR(100),
    category_id INT,
    author_id INT,
    price DECIMAL(10, 2),
    published_date DATE
);

-- Create Authors table
CREATE TABLE Authors (
    author_id INT PRIMARY KEY,
    author_name VARCHAR(100)
);

-- Create Categories table
CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(50)
);

-- Insert records into Authors table
INSERT INTO Authors (author_id, author_name)
VALUES (1, 'Jane Doe'),
       (2, 'John Smith'),
       (3, 'Alice Johnson');

-- Insert records into Categories table
INSERT INTO Categories (category_id, category_name)
VALUES (101, 'Fiction'),
       (102, 'Mystery'),
       (103, 'Science Fiction');

-- Insert records into Books table
INSERT INTO Books (book_id, title, category_id, author_id, price, published_date)
VALUES (1001, 'Book A', 101, 1, 19.99, '2023-01-15'),
       (1002, 'Book B', 101, 2, 14.99, '2022-11-10'),
       (1003, 'Book C', 102, 3, 12.50, '2023-04-20'),
       (1004, 'Book D', 103, 1, 24.99, '2021-12-05'),
       (1005, 'Book E', 103, 2, 9.99, '2023-07-01');

/*
We assume that each book has only one author. However, in real-world scenarios, a book may have multiple authors. 
So, we'll decompose the Books table to remove this redundancy.
*/

-- Create a new table for BookAuthors
CREATE TABLE BookAuthors (
    book_id INT PRIMARY KEY,
    author_id INT
);

-- Insert records into BookAuthors table
INSERT INTO BookAuthors (book_id, author_id)
VALUES (1001, 1),
       (1002, 2),
       (1003, 3),
       (1004, 1),
       (1005, 2);

-- Remove author_id from the Books table
ALTER TABLE Books
DROP COLUMN author_id;

-- 2 NF

-- Create a new table for BookPrices
CREATE TABLE BookPrices (
    book_id INT PRIMARY KEY,
    price DECIMAL(10, 2)
);

-- Insert records into BookPrices table
INSERT INTO BookPrices (book_id, price)
VALUES (1001, 19.99),
       (1002, 14.99),
       (1003, 12.50),
       (1004, 24.99),
       (1005, 9.99);

-- Remove price from the Books table
ALTER TABLE Books
DROP COLUMN price;

-- 3 NF

-- Remove category_name from the Books table
ALTER TABLE Books
DROP COLUMN category_id;

-- Create a new table for BookCategories
CREATE TABLE BookCategories (
    book_id INT PRIMARY KEY,
    category_id INT
);

-- Insert records into BookCategories table
INSERT INTO BookCategories (book_id, category_id)
VALUES (1001, 101),
       (1002, 101),
       (1003, 102),
       (1004, 103),
       (1005, 103);

-- Remove category_name from the Categories table
ALTER TABLE Categories
DROP COLUMN category_name;


-- BCNF

-- Create a new table for BookDetails
CREATE TABLE BookDetails (
    book_id INT PRIMARY KEY,
    author_id INT,
    title VARCHAR(100),
    published_date DATE
);

-- Insert records into BookDetails table
INSERT INTO BookDetails (book_id, author_id, title, published_date)
VALUES (1001, 1, 'Book A', '2023-01-15'),
       (1002, 2, 'Book B', '2022-11-10'),
       (1003, 3, 'Book C', '2023-04-20'),
       (1004, 1, 'Book D', '2021-12-05'),
       (1005, 2, 'Book E', '2023-07-01');

-- Remove title and published_date from the Books table
ALTER TABLE Books
DROP COLUMN title, DROP COLUMN published_date;




