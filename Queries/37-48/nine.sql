/*
Write a PL/SQL program that  Create Trigger to enforce a minimum salary requirement while inserting record in employee table.

This trigger will prevent any new or updated records from being added to the "employee" table if the salary is less than 30,000. 
It uses the RAISE_APPLICATION_ERROR procedure to raise a custom error when the condition is not met.

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


CREATE OR REPLACE TRIGGER enforce_min_salary
BEFORE INSERT OR UPDATE ON employee
FOR EACH ROW
BEGIN
    IF :NEW.salary < 30000 THEN
        RAISE_APPLICATION_ERROR(-20001, 'Salary must be at least 30,000.');
    END IF;
END;
/

INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (5, 'Marvin', 'Miski', 'HR', 10000);



