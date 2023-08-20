/*
Write a program in PL/SQL to display a cursor based detail information of employees from employees table.
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
    CURSOR z_emp_info IS 
      SELECT employee_id, 
             first_name, 
             last_name, 
             salary 
      FROM   employee; 
    r_emp_info z_emp_info%ROWTYPE; 
BEGIN 
    OPEN z_emp_info; 

    LOOP 
        FETCH z_emp_info INTO r_emp_info; 

        EXIT WHEN z_emp_info%NOTFOUND; 

        dbms_output.Put_line('Employees Information:: ' 
                             ||'  ID: ' 
                             ||r_emp_info.employee_id 
                             ||'  Name: ' 
                             ||r_emp_info.first_name 
                             ||' ' 
                             ||r_emp_info.last_name); 
    END LOOP; 

    dbms_output.Put_line('Total number of rows : ' 
                         ||z_emp_info%rowcount); 

    CLOSE z_emp_info; 
END;
/
