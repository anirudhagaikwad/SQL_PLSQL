/*
Write a PL/SQL procedure to calculate the incentive on a target achieved and display the message either the record updated or not.

*/

-- Create table
CREATE TABLE incentive_table (
    employee_id NUMBER PRIMARY KEY,
    target NUMBER,
    achieved NUMBER,
    incentive NUMBER
);

-- Insert sample data
INSERT INTO incentive_table (employee_id, target, achieved, incentive)
VALUES (1, 100, 120, NULL);

INSERT INTO incentive_table (employee_id, target, achieved, incentive)
VALUES (2, 200, 180, NULL);

-- PL/SQL Procedure to calculate incentive and update the table
CREATE OR REPLACE PROCEDURE calculate_incentive(p_employee_id NUMBER) AS
    v_target NUMBER;
    v_achieved NUMBER;
    v_incentive NUMBER;
BEGIN
    -- Retrieve target and achieved values
    SELECT target, achieved INTO v_target, v_achieved
    FROM incentive_table
    WHERE employee_id = p_employee_id;
    
    -- Calculate incentive (assuming a fixed incentive rate of 10%)
    v_incentive := (v_achieved / v_target) * 0.10;
    
    -- Update the incentive column in the table
    UPDATE incentive_table
    SET incentive = v_incentive
    WHERE employee_id = p_employee_id;

    IF SQL%ROWCOUNT > 0 THEN
        DBMS_OUTPUT.PUT_LINE('Incentive calculated and record updated successfully.');
    ELSE
        DBMS_OUTPUT.PUT_LINE('Employee ID not found. No record updated.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Employee ID not found. No record updated.');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred. No record updated.');
END;
BEGIN 
   calculate_incentive(2);
END; 
/
