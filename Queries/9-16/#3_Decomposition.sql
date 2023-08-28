/*
Decomposition is a database design process that involves breaking a single table with multiple attributes into multiple tables to improve data integrity, reduce data redundancy, and simplify queries. Let's walk through a simple example of decomposing a table in MySQL.

Suppose we have a table called "Employee" with the following attributes:
In this table, we have attributes like emp_id, emp_name, emp_department, and emp_salary.

However, we realize that the emp_department attribute could have multiple values for each employee, and this can lead to data redundancy and integrity issues. To address this, we can decompose the table into two separate tables: "Employee" and "Department."
Now, the emp_department attribute has been removed from the "Employee" table, and we have a new "Department" table with department information.
*/
-- Create Department Table
CREATE TABLE Department (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50)
);

-- Insert data into Department Table
INSERT INTO Department (department_id, department_name)
VALUES
  (1, 'HR'),
  (2, 'Engineering'),
  (3, 'Sales');

/*
By decomposing the table and creating a separate "Department" table, we have eliminated data redundancy and ensured data integrity. Now, the department information is stored in a single place and linked to the appropriate employees using the department_id foreign key.
*/

-- Create Employee Table with Foreign Key Constraint
CREATE TABLE Employee (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(100),
  department_id INT,
  emp_salary DECIMAL(10, 2),
  FOREIGN KEY (department_id) REFERENCES Department(department_id)
);

-- Insert data into Employee Table
INSERT INTO Employee (emp_id, emp_name, department_id, emp_salary)
VALUES
  (1, 'John Smith', 1, 50000),
  (2, 'Jane Doe', 2, 60000),
  (3, 'Bob Johnson', 3, 45000);
/*
Now that we have both tables set up and populated with data, we can retrieve the employee name along with their department name using a JOIN query:
*/
-- Retrieve employee name along with their department name
SELECT e.emp_name, d.department_name
FROM Employee e
JOIN Department d ON e.department_id = d.department_id;
/*
we have successfully decomposed the initial table, created separate tables for departments and employees, and established a foreign key relationship between them. Now, the data is well-organized, and we can retrieve information efficiently using JOIN queries when needed.
*/
