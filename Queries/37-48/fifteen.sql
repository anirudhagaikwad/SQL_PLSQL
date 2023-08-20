/*
Write a PL/SQL program to create Package with a function to get the total salary of all employees in a specific 
department
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

INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (4, 'Merry', 'Agarwal', 'IT', 20000);

CREATE OR REPLACE PACKAGE employee_mgmt AS
    FUNCTION get_department_salary(department_name VARCHAR2) RETURN NUMBER;
END employee_mgmt;
/

CREATE OR REPLACE PACKAGE BODY employee_mgmt AS
    FUNCTION get_department_salary(department_name VARCHAR2) RETURN NUMBER IS
        total_salary NUMBER := 0;
    BEGIN
        SELECT SUM(salary) INTO total_salary
        FROM employee
        WHERE department = department_name;

        RETURN total_salary;
    END;
END employee_mgmt;
/



