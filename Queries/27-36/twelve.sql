/*
Write a PL/SQL program that will update the salary of employees belonging to a specific department.
You need to provide the department name and the percentage increase in salary as input parameters. 
The program will update the salaries of all employees in that department accordingly.

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
VALUES (4, 'Merry', 'Agarwal', 'IT', 50000);


CREATE OR REPLACE PROCEDURE 
update_salary_by_department(p_department VARCHAR2, p_percentage_increase NUMBER) AS
BEGIN
    UPDATE employee
    SET salary = salary * (1 + p_percentage_increase / 100)
    WHERE department = p_department;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Salaries updated successfully for employees in ' || p_department);
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employees found in the department ' || p_department);
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred while updating salaries.');
END;
BEGIN
   update_salary_by_department('IT',5);
END;
/
