/*
Write a PL/SQL program to check whether a given number is positive, negative or zero.
Input: -5
Output: The number -5 is a negative number
*/
DECLARE
num1 NUMBER := -5;
BEGIN
IF num1 < 0 THEN
DBMS_OUTPUT.PUT_LINE ('The number '||num1||' is a negative number');
ELSIF num1 = 0 THEN
DBMS_OUTPUT.PUT_LINE ('The number '||num1||' is equal to zero');
ELSE
DBMS_OUTPUT.PUT_LINE ('The number '||num1||' is a positive number');
END IF;
END;
/
