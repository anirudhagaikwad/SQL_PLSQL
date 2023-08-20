/*
Create a procedure that takes an employee ID and a department name as input parameters. The procedure transfers the employee to the new department by updating the employee's record without using unnecessary memory (using NOCOPY hint).

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


CREATE OR REPLACE PROCEDURE transfer_employee(p_employee_id IN NUMBER, p_new_department IN VARCHAR2) AS
    PRAGMA AUTONOMOUS_TRANSACTION;
    v_employee_rec employee%ROWTYPE;
BEGIN
    SELECT *
    INTO v_employee_rec
    FROM employee
    WHERE employee_id = p_employee_id;
    
    v_employee_rec.department := p_new_department;
    
    UPDATE employee
    SET department = p_new_department
    WHERE employee_id = p_employee_id;
    
    COMMIT;
    
    DBMS_OUTPUT.PUT_LINE('Employee ID ' || p_employee_id || ' transferred to ' || p_new_department);
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID ' || p_employee_id || ' not found.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
END;
/
