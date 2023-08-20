/*
Create a table called "employees": attributes- emp_id, emp_name, emp_age, emp_department
Insert multiple records into the "employees" table
Select employees that are in department of 'HR', 'Marketing'.
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
    
SELECT * FROM employees
WHERE emp_department IN ('HR', 'Marketing');






