/*Functional Dependencies:
Functional dependencies define the relationships between attributes (columns) within a relation (table) in a relational database. A functional dependency occurs when the value of one or more attributes uniquely determines the value of another attribute. It specifies how the values in one set of attributes determine the values in another set.
*/

/*
Let's consider an example to understand functional dependencies:

Suppose we have a relation (table) named "Student" with the following attributes:

- Student_ID (Primary Key)
- First_Name
- Last_Name
- Birthdate
- Address
- Phone_Number

In this example, let's define some functional dependencies:

1. Student_ID → First_Name, Last_Name, Birthdate, Address, Phone_Number
   This means that knowing the Student_ID uniquely determines the other attributes of the student.

2. Phone_Number → Student_ID
   This indicates that knowing the Phone_Number allows us to determine the corresponding Student_ID. This could be useful for looking up students based on their phone numbers.

3. First_Name, Last_Name → Student_ID
   This states that the combination of First_Name and Last_Name together can determine the Student_ID. This could be the case if First_Name and Last_Name together are unique identifiers for students.

4. Birthdate → Age
   This functional dependency implies that if we know the Birthdate of a student, we can calculate their Age attribute.

5. Student_ID, Address → Phone_Number
   This indicates that if we know both the Student_ID and the Address, we can determine the associated Phone_Number.

These functional dependencies help in database design, normalization, and data integrity. They ensure that data is stored in a structured way that avoids redundancy and anomalies.

It's important to note that not all relationships between attributes are functional dependencies. Functional dependencies represent a stricter concept where the values of one set of attributes uniquely determine the values of another set. In practice, identifying and correctly defining functional dependencies is crucial for designing efficient and reliable database systems.
*/

-- This is a SQL script demonstrating the creation of a "Student" table with functional dependencies.

-- Create the "Student" table
CREATE TABLE Student (
    Student_ID INT PRIMARY KEY,
    First_Name VARCHAR(50),
    Last_Name VARCHAR(50),
    Birthdate DATE,
    Address VARCHAR(100),
    Phone_Number VARCHAR(15)
);

-- Insert sample data into the "Student" table
INSERT INTO Student (Student_ID, First_Name, Last_Name, Birthdate, Address, Phone_Number)
VALUES
    (1, 'John', 'Doe', '1995-03-15', '123 Main St', '555-1234'),
    (2, 'Jane', 'Smith', '1998-08-22', '456 Elm St', '555-5678');

-- Display the contents of the "Student" table
SELECT * FROM Student;


