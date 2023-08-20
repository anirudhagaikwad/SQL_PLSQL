/*
Write a PL/SQL program that Create Trigger to update the salary automatically when a new employee is inserted

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


CREATE OR REPLACE TRIGGER trg_update_salary
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
    IF :new.salary IS NULL THEN
        :new.salary := 50000; -- Default salary when not provided
    END IF;
END;
/


INSERT INTO employee (employee_id, first_name, last_name, department)
VALUES (5, 'Marvin', 'Miski', 'HR');



