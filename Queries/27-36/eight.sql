/*
Write a PL/SQL block to retrieve the first 3 characters of each employee's last name in the employees table.

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

DECLARE
v_first_three_chars VARCHAR2(3);
BEGIN
  FOR emp IN (SELECT last_name FROM employee) LOOP
v_first_three_chars := SUBSTR(emp.last_name, 1, 3);
    DBMS_OUTPUT.PUT_LINE('First three characters of last name: ' || v_first_three_chars);
  END LOOP;
END;
/
