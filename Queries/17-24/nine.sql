/*
Create a table for employee with attributes- emp_id, emp_name, emp_salary, department_id
Insert multiple records into the employees table
Create a table for departments with attibutes- department_id, department_name
Insert multiple records into the departments table
Perform an inner join between employees and departments:
Perform a left join between employees and departments
Perform a right join between employees and departments

*/

CREATE TABLE employee (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  emp_salary DECIMAL(10, 2),
  department_id INT
);

INSERT INTO employee (emp_id, emp_name, emp_salary, department_id)
VALUES (1, 'John Doe', 50000.00, 101),
       (2, 'Jane Smith', 60000.00, 102),
       (3, 'Michael Johnson', 55000.00, 101),
       (4, 'Emily Brown', 52000.00, 103),
       (5, 'William Davis', 58000.00, 102);
       
select * from employee;

CREATE TABLE departments (
  department_id INT PRIMARY KEY,
  department_name VARCHAR(50)
);

INSERT INTO departments (department_id, department_name)
VALUES (101, 'HR'),
       (102, 'Finance'),
       (103, 'Marketing');

-- Perform an inner join between employees and departments:
SELECT emp_name, emp_salary, department_name
FROM employee
INNER JOIN departments ON employee.department_id = departments.department_id;

-- Perform a left join between employees and departments
SELECT emp_name, emp_salary, department_name
FROM employee
LEFT JOIN departments ON employee.department_id = departments.department_id;

-- Perform a right join between employees and departments
SELECT emp_name, emp_salary, department_name
FROM employee
RIGHT JOIN departments ON employee.department_id = departments.department_id;


