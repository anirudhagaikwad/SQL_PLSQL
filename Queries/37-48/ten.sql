/*
Write a PL/SQL program that create Trigger to update the "salary" of an employee to 80000 if the "department" is 
changed to 'Management'

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


CREATE OR REPLACE TRIGGER trg_department_update
BEFORE UPDATE OF department ON employee
FOR EACH ROW
BEGIN
    IF :NEW.department = 'Management' THEN
        :NEW.salary := 80000;
    END IF;
END;
/




