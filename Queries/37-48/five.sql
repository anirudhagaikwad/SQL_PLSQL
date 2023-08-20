/*
Write a PL/SQL program that will  calculate and display the average salary of all employees

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


CREATE OR REPLACE PROCEDURE calculate_average_salary AS
    total_salary NUMBER := 0;
    employee_count NUMBER := 0;
    CURSOR c_employees IS
        SELECT salary FROM employee;
    v_salary employee.salary%TYPE;
BEGIN
    OPEN c_employees;
    LOOP
        FETCH c_employees INTO v_salary;
        EXIT WHEN c_employees%NOTFOUND;
        total_salary := total_salary + v_salary;
        employee_count := employee_count + 1;
    END LOOP;
    CLOSE c_employees;

    IF employee_count > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Average Salary: ' || (total_salary / employee_count));
    ELSE
        DBMS_OUTPUT.PUT_LINE('No employees found.');
    END IF;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
END;
/
