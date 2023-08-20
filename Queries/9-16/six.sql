/*
Decomposition: Horizontal Fragmentation
Horizontal fragmentation involves splitting a table into multiple fragments based on specific rows that satisfy certain conditions.

Create table employees with attributes: emp_id, emp_name, emp_department, emp_salary
Horizontally fragmented the "employees" table into two separate tables based on their respective departments.

*/
-- Original table
CREATE TABLE employees (
  emp_id INT PRIMARY KEY,
  emp_name VARCHAR(50),
  emp_department VARCHAR(50),
  emp_salary DECIMAL(10, 2)
);

-- Horizontal fragmentation
CREATE TABLE it_employees AS
SELECT * FROM employees WHERE emp_department = 'IT';

CREATE TABLE finance_employees AS
SELECT * FROM employees WHERE emp_department = 'Finance';

/*
In this example, we horizontally fragmented the "employees" table into two separate tables based on their respective departments.
*/

