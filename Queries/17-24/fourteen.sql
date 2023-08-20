/*
Create a table called "employees": attributes- emp_id, emp_name, emp_age, emp_department
Insert multiple records into the "employees" table

Add a new column "email" to the "employees" table
Add a new column "salary" to the "employees" table
Increase the salary of employee in the "IT" department by 10% whose id is 1
In employees table rename the salary column as emp_salary
*/

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    emp_age INT,
    emp_department VARCHAR(50)
);

INSERT INTO employees (emp_id, emp_name, emp_age, emp_department)
VALUES
    (1, 'John Smith', 30, 'IT'),
    (2, 'Jane Doe', 25, 'HR'),
    (3, 'Michael Johnson', 35, 'Finance'),
    (4, 'Emily Williams', 28, 'Marketing');
    
-- Add a new column "email" to the "employees" table

ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- Add a new column "salary" to the "employees" table

ALTER TABLE employees
ADD COLUMN salary INT;

desc employees;

-- Increase the salary of employee in the "IT" department by 10% whose id is 1

UPDATE employees
SET salary = salary * 1.10
WHERE emp_department = 'IT' and emp_id=1;

-- In employees table rename the salary column as emp_salary

ALTER TABLE employees
RENAME COLUMN salary TO emp_salary;



