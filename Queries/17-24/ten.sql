/*
Create a table called "employees": attributes- emp_id, emp_name, emp_age, emp_department
Insert multiple records into the "employees" table
Select employees aged 25 or younger from the HR department:
Select employees aged 30 or older from the IT department or Marketing department
Select employees aged 30 or older from the IT department and Finance department
 
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
    

-- Select employees aged 25 or younger from the HR department:
SELECT * FROM employees WHERE emp_age <= 25 AND emp_department = 'HR';

-- Select employees aged 30 or older from the IT department or Marketing department
SELECT * FROM employees WHERE (emp_age >= 30 AND emp_department = 'IT') OR emp_department = 'Marketing';

-- Select employees aged 30 or older from the IT department and Finance department
SELECT * FROM employees WHERE (emp_age >= 30 AND emp_department = 'IT') OR emp_department = 'Finance';





