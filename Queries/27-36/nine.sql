/*
Write a program in PL/SQL to find the number of rows effected by the use of SQL%ROWCOUNT attributes of an implicit cursor

*/

-- Create the "employee" table
CREATE TABLE employee (
    employee_id NUMBER PRIMARY KEY,
    first_name VARCHAR2(50),
    last_name VARCHAR2(50),
    department VARCHAR2(50),
    salary NUMBER
);

-- Insert sample records into the "employee" table
INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (1, 'John', 'Doe', 'HR', 50000);

INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (2, 'Jane', 'Smith', 'Finance', 60000);

INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (3, 'Michael', 'Johnson', 'IT', 70000);

DROP TABLE emp_temp;
CREATE TABLE emp_temp AS
  SELECT employee_id, first_name, last_name,department 
  FROM employee;

BEGIN
    UPDATE emp_temp
    SET    department = 'not available'
    WHERE  first_name LIKE 'M%';

    dbms_output.Put_line('Number of record updated: '
                         ||To_char(SQL%rowcount));
END;
/ 
