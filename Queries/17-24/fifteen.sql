/*
create table 'book' with attributes: book_id, title, author, publication_year, genre
Add multiple records in it.
Delete a specific record from the "book" table 
Update the publication_year of a book with a specific book_id 
Select books with titles containing a specific keyword (e.g., 'novel')
Select the earliest publication year among all books
Remove all records from book, but keeps the table structure

*/


CREATE TABLE book (
    book_id INT PRIMARY KEY,
    title VARCHAR(255),
    author VARCHAR(100),
    publication_year INT,
    genre VARCHAR(50)
);

INSERT INTO book (book_id, title, author, publication_year, genre)
VALUES (1, 'Example Book', 'John Doe', 2020, 'Fiction'),(2, 'Another Book', 'Jane Smith', 2018, 'Mystery'),
    (3, 'Great Novel', 'Michael Johnson', 2015, 'Drama'),
    (4, 'Adventure Awaits', 'Samantha Lee', 2021, 'Adventure');
    
select * from book;

-- Delete a specific record from the "book" table 
DELETE FROM book
WHERE book_id = 2;

-- Update the publication_year of a book with a specific book_id 

UPDATE book
SET publication_year = 2019
WHERE book_id = 3;

-- Select books with titles containing a specific keyword (e.g., 'novel'):

SELECT * FROM book
WHERE title LIKE '%novel%';

-- Select the earliest publication year among all books
SELECT MIN(publication_year) AS earliest_year FROM book;

-- remove all records from book, but keeps the table structure
TRUNCATE TABLE book;


