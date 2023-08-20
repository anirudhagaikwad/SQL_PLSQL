/*
Write a PL/SQL program that Create Trigger to automatically generate an employee ID using a sequence.

*/


CREATE SEQUENCE seq_employee_id START WITH 1000 INCREMENT BY 1;

CREATE OR REPLACE TRIGGER trg_generate_employee_id
BEFORE INSERT ON employee
FOR EACH ROW
BEGIN
    IF :new.employee_id IS NULL THEN
        :new.employee_id := seq_employee_id.NEXTVAL;
    END IF;
END;
/
