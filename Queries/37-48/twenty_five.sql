/*
Create a procedure that calculates and displays the total salary of employees in a given department. 
The department name is an optional parameter with a default value of 'HR'.
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


CREATE OR REPLACE PROCEDURE total_salary_by_department(p_department_name IN VARCHAR2 DEFAULT 'HR') AS
    v_total_salary NUMBER;
BEGIN
    SELECT SUM(salary) INTO v_total_salary
    FROM employee
    WHERE department = p_department_name;
    
    DBMS_OUTPUT.PUT_LINE('Total Salary for Department ' || p_department_name || ': ' || v_total_salary);
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
END;
/
