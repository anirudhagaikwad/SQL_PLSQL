/* Write a PL/SQL program to check whether a date falls on weekend i.e. SATURDAY or SUNDAY. 

Input: 05-07-2023
Output: The day of the given date is WEDNESDAY and it does not fall on the weekend
*/

DECLARE
dt1 DATE := TO_DATE('05-07-2023', 'DD-MM-YYYY');
get_day VARCHAR2(15);
BEGIN
get_day := RTRIM(TO_CHAR(dt1, 'DAY'));
IF get_day IN ('SATURDAY', 'SUNDAY') THEN
dbms_output.new_line;
DBMS_OUTPUT.PUT_LINE 
('The day of the given date is '||get_day||' and it falls on weekend');
ELSE
dbms_output.new_line;
DBMS_OUTPUT.PUT_LINE ('The day of the given date is '||get_day||' and it does not fall on the weekend');
END IF;
DBMS_OUTPUT.PUT_LINE ('Execution  done successfully.');
END;
/
