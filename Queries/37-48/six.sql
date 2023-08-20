/*
Write a PL/SQL program that  display employees' information from a specific department

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


CREATE OR REPLACE PROCEDURE display_employees_by_department(p_department VARCHAR2) AS
    CURSOR c_employees IS
        SELECT * FROM employee WHERE department = p_department;
    v_employee employee%ROWTYPE;
BEGIN
    OPEN c_employees;
    LOOP
        FETCH c_employees INTO v_employee;
        EXIT WHEN c_employees%NOTFOUND;
        DBMS_OUTPUT.PUT_LINE(
            v_employee.employee_id || ', ' ||
            v_employee.first_name || ' ' || v_employee.last_name || ', ' ||
            v_employee.department || ', ' || v_employee.salary
        );
    END LOOP;
    CLOSE c_employees;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
END;
/

