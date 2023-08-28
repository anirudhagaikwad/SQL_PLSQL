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
ADD FOREIGN KEY (AuthorID) REFERENCES AuthorDetails(AuthorID),
ADD FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID);

-- Display contents of normalized tables
SELECT * FROM Authors;
SELECT * FROM Books;
SELECT * FROM Publishers;
SELECT * FROM AuthorDetails;

