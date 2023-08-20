/* Write a PL/SQL program to check whether a number is even or odd. */

DECLARE
n1 NUMBER := 54;
BEGIN
-- test if the number provided by the user is even
IF MOD(n1,2) = 0 THEN
DBMS_OUTPUT.PUT_LINE ('The number. '||n1||
' is even number');
ELSE
DBMS_OUTPUT.PUT_LINE ('The number '||n1||' is odd number.');
END IF;
DBMS_OUTPUT.PUT_LINE ('Done Successfully');
END;
/
