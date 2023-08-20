/*
Write a PL/SQL program that Create Trigger to prevent deletion of employees with a salary greater than 90000.

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
VALUES (4, 'Merry', 'Agarwal', 'IT', 95000);

CREATE OR REPLACE TRIGGER trg_prevent_employee_deletion
BEFORE DELETE ON employee
FOR EACH ROW
BEGIN
    IF :old.salary > 90000 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Employees with a salary greater than 90,000 cannot be deleted.');
    END IF;
END;
/

DELETE FROM employee where id=4;