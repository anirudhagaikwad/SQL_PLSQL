/*
Write a program in PL/SQL to declare a record datatype with same datatype of tables using %TYPE attribute.
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
    CURSOR cur_emp_detail IS
      SELECT employee_id,
             first_name,
             last_name,
             salary
      FROM   employee;
    TYPE type_record_type IS RECORD (
      emp_id employee.employee_id%TYPE,
      emp_f_name employee.first_name%TYPE,
      emp_l_name employee.last_name%TYPE,
      emp_s_salary employee.salary%TYPE );
    emp_rec_type type_record_type; 
BEGIN
    OPEN cur_emp_detail;
    LOOP
        FETCH cur_emp_detail INTO emp_rec_type;
        EXIT WHEN cur_emp_detail%NOTFOUND;
        dbms_output.Put_line('Employees Information::  '
                             ||'  ID: '
                             ||emp_rec_type.emp_id
                             ||'|   Name: '
                             ||emp_rec_type.emp_f_name
                             ||' '
                             ||emp_rec_type.emp_l_name
                             ||'|   Salary: '
                             ||emp_rec_type.emp_s_salary);
    END LOOP;
    dbms_output.Put_line('Total number of Employees : '
                         ||cur_emp_detail%rowcount);
    CLOSE cur_emp_detail;
END;
/
