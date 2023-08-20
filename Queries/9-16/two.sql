/*
Decomposition: Vertical Decomposition
Vertical decomposition involves splitting a table's columns into multiple tables based on attribute groups.

Create table student with attributes student_id, student_name, age, address, phone_number.
Decompose the "student" table into "student_personal_info" and "student_contact_info" tables based on attribute groups

*/

-- Original table
CREATE TABLE student (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50),
  age INT,
  address VARCHAR(100),
  phone_number VARCHAR(15)
);

-- Decomposed tables
CREATE TABLE student_personal_info (
  student_id INT PRIMARY KEY,
  student_name VARCHAR(50),
  age INT
);

CREATE TABLE student_contact_info (
  student_id INT PRIMARY KEY,
  address VARCHAR(100),
  phone_number VARCHAR(15)
);

/*
In this example, we decomposed the "student" table into "student_personal_info" and "student_contact_info" tables based on attribute groups.
*/