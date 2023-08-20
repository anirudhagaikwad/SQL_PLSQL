/*
Write a PL/SQL program to create Package with a procedure to update the department of an employee
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
    PROCEDURE update_employee_department(employee_id NUMBER, new_department VARCHAR2);
END employee_mgmt;
/

CREATE OR REPLACE PACKAGE BODY employee_mgmt AS
    PROCEDURE update_employee_department(employee_id NUMBER, new_department VARCHAR2) IS
    BEGIN
        UPDATE employee
        SET department = new_department
        WHERE employee_id = employee_id;
        COMMIT;
    END;
END employee_mgmt;
/



