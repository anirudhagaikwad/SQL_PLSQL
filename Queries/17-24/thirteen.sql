/*
Create a table called "employees": attributes- emp_id, emp_name, emp_age, emp_department
Insert multiple records into the "employees" table

Create a table for departments with attibutes- department_id, department_name
Insert multiple records into the departments table

Select employees whose deaprtment belongs to department table

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
    
CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name)
VALUES (101, 'HR'),
       (102, 'Finance'),
       (103, 'Marketing');
-- Select employees whose deaprtment belongs to department table

SELECT emp_name, emp_department FROM employees
WHERE EXISTS (
    SELECT 1 FROM departments
    WHERE departments.department_name = employees.emp_department
);





