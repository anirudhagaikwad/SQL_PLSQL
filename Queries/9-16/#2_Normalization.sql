/*
Normalization is a database design technique used to organize relational database tables and reduce data redundancy, anomalies, and inconsistencies. It involves breaking down a table into smaller tables and establishing relationships between them to improve data integrity and overall efficiency. The process is typically carried out through a series of normalization forms, each building on the previous one.

Let's go through an example to understand normalization:

Consider a scenario where you are designing a database to store information about books and their authors. You decide to create a single table to hold all the data. Here's what your initial table might look like:

**Initial Table: BookCatalog**
| BookID | Title          | Author        | AuthorBirthdate | AuthorNationality | Publisher     | Year |
|--------|----------------|---------------|-----------------|-------------------|---------------|------|
| 1      | Book A         | Author X      | 1980-05-15      | Country A         | Publisher A   | 2000 |
| 2      | Book B         | Author Y      | 1975-12-03      | Country B         | Publisher A   | 2010 |
| 3      | Book C         | Author X      | 1980-05-15      | Country A         | Publisher B   | 2015 |

In this table, there's redundancy in the author information. Author X's details are duplicated for both books by that author. Also, if an author's details change (e.g., birthdate), you would need to update multiple rows, potentially leading to inconsistencies.

Now, let's apply normalization:

**First Normal Form (1NF):**
Each column should contain atomic (indivisible) values, and each row should be unique.
We can achieve this by splitting the table into two: one for books and another for authors.

**Table: Authors**
| AuthorID | Author        | AuthorBirthdate | AuthorNationality |
|----------|---------------|-----------------|-------------------|
| 1        | Author X      | 1980-05-15      | Country A         |
| 2        | Author Y      | 1975-12-03      | Country B         |

**Table: Books**
| BookID | Title    | AuthorID | Publisher   | Year |
|--------|----------|----------|-------------|------|
| 1      | Book A   | 1        | Publisher A | 2000 |
| 2      | Book B   | 2        | Publisher A | 2010 |
| 3      | Book C   | 1        | Publisher B | 2015 |

Now, author details are stored once, reducing redundancy.

**Second Normal Form (2NF):**
Each non-key column should be fully functionally dependent on the entire primary key.
In this case, the primary key for the "Books" table is (BookID), and "Publisher" depends only on part of the primary key. Let's split the table again.

**Table: Authors**
(unchanged)

**Table: Publishers**
| PublisherID | Publisher   |
|-------------|-------------|
| 1           | Publisher A |
| 2           | Publisher B |

**Table: Books**
| BookID | Title    | AuthorID | PublisherID | Year |
|--------|----------|----------|-------------|------|
| 1      | Book A   | 1        | 1           | 2000 |
| 2      | Book B   | 2        | 1           | 2010 |
| 3      | Book C   | 1        | 2           | 2015 |

Now, the "Publisher" information is stored separately in the "Publishers" table.

**Third Normal Form (3NF):**
Columns should not depend on other non-key columns.
In the "Books" table, "AuthorID" determines "AuthorNationality." To resolve this, we create a separate table for author information.

**Table: Authors**
(unchanged)

**Table: Publishers**
(unchanged)

**Table: Books**
| BookID | Title    | AuthorID | PublisherID | Year |
|--------|----------|----------|-------------|------|
| 1      | Book A   | 1        | 1           | 2000 |
| 2      | Book B   | 2        | 1           | 2010 |
| 3      | Book C   | 1        | 2           | 2015 |

**Table: AuthorDetails**
| AuthorID | AuthorBirthdate | AuthorNationality |
|----------|-----------------|-------------------|
| 1        | 1980-05-15      | Country A         |
| 2        | 1975-12-03      | Country B         |

Normalization enhances data integrity, reduces anomalies, and simplifies data management. However, it can lead to more complex queries and joins. The decision on how far to normalize depends on the specific requirements of the database and application.
*/

-- This is an SQL script demonstrating the normalization process for the "BookCatalog" scenario.

-- Initial table structure with denormalized data
CREATE TABLE BookCatalog (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Author VARCHAR(100),
    AuthorBirthdate DATE,
    AuthorNationality VARCHAR(50),
    Publisher VARCHAR(100),
    Year INT
);

-- Insert sample data
INSERT INTO BookCatalog (BookID, Title, Author, AuthorBirthdate, AuthorNationality, Publisher, Year)
VALUES
    (1, 'Book A', 'Author X', '1980-05-15', 'Country A', 'Publisher A', 2000),
    (2, 'Book B', 'Author Y', '1975-12-03', 'Country B', 'Publisher A', 2010),
    (3, 'Book C', 'Author X', '1980-05-15', 'Country A', 'Publisher B', 2015);

-- First Normal Form (1NF): Separate Authors and Books
CREATE TABLE Authors (
    AuthorID INT PRIMARY KEY,
    Author VARCHAR(100),
    AuthorBirthdate DATE,
    AuthorNationality VARCHAR(50)
);

CREATE TABLE Books (
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    AuthorID INT,
    Publisher VARCHAR(100),
    Year INT
);

-- Insert data into Authors and Books tables
INSERT INTO Authors (AuthorID, Author, AuthorBirthdate, AuthorNationality)
VALUES
    (1, 'Author X', '1980-05-15', 'Country A'),
    (2, 'Author Y', '1975-12-03', 'Country B');

INSERT INTO Books (BookID, Title, AuthorID, Publisher, Year)
VALUES
    (1, 'Book A', 1, 'Publisher A', 2000),
    (2, 'Book B', 2, 'Publisher A', 2010),
    (3, 'Book C', 1, 'Publisher B', 2015);

-- Second Normal Form (2NF): Separate Publishers
CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY,
    Publisher VARCHAR(100)
);

-- Update Books table to use PublisherID
ALTER TABLE Books
ADD PublisherID INT;

-- Insert data into Publishers table
INSERT INTO Publishers (PublisherID, Publisher)
VALUES
    (1, 'Publisher A'),
    (2, 'Publisher B');

-- Update Books table to reference PublisherID
UPDATE Books SET PublisherID = 1 WHERE BookID IN (1, 2);
UPDATE Books SET PublisherID = 2 WHERE BookID = 3;

-- Third Normal Form (3NF): Separate Author Details
CREATE TABLE AuthorDetails (
    AuthorID INT PRIMARY KEY,
    AuthorBirthdate DATE,
    AuthorNationality VARCHAR(50)
);

-- Insert data into AuthorDetails table
INSERT INTO AuthorDetails (AuthorID, AuthorBirthdate, AuthorNationality)
VALUES
    (1, '1980-05-15', 'Country A'),
    (2, '1975-12-03', 'Country B');

-- Final Books table referencing AuthorDetails and Publishers
ALTER TABLE Books
DROP COLUMN Author,
DROP COLUMN AuthorBirthdate,
DROP COLUMN AuthorNationality,
ADD FOREIGN KEY (AuthorID) REFERENCES AuthorDetails(AuthorID),
ADD FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID);

-- Display contents of normalized tables
SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Publishers;
SELECT * FROM AuthorDetails;

