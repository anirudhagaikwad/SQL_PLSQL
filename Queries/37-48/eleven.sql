/*
Write a PL/SQL program that create Trigger to enforce a unique constraint on the combination of "first_name" and 
"last_name"
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


CREATE OR REPLACE TRIGGER trg_unique_name
BEFORE INSERT OR UPDATE OF first_name, last_name ON employee
FOR EACH ROW
DECLARE
    cnt NUMBER;
BEGIN
    SELECT COUNT(*) INTO cnt
    FROM employee
    WHERE first_name = :NEW.first_name AND last_name = :NEW.last_name;

    IF cnt > 0 THEN
        RAISE_APPLICATION_ERROR(-20002, 'Employee with the same name already exists.');
    END IF;
END;
/

INSERT INTO employee (employee_id, first_name, last_name, department, salary)
VALUES (6, 'John', 'Doe', 'HR', 60000);




