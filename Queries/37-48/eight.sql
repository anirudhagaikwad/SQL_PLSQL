/*
Write a PL/SQL program that  delete an employee based on their employee_id

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


CREATE OR REPLACE PROCEDURE delete_employee_by_id(p_employee_id NUMBER) AS
BEGIN
    DELETE FROM employee
    WHERE employee_id = p_employee_id;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Employee deleted successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee ID not found. No employee deleted.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
END;
/


