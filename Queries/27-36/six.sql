/*
Write a PL/SQL block that prompts the user to enter a string and removes any leading and trailing zeros from it. Display the trimmed string.
Input: 00000test string00000
Output: Trimmed String: [test string]

*/

DECLARE
v_input_string VARCHAR2(100);
v_trimmed_string VARCHAR2(100);
BEGIN
v_input_string := '00000test string00000';

v_trimmed_string := TRIM('0' FROM v_input_string);
  DBMS_OUTPUT.PUT_LINE('Trimmed String: [' || v_trimmed_string || ']');
END;
