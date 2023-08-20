
/*
Write a PL/SQL block to differentiate between CHAR and VARCHAR2 datatype. 
*/
DECLARE
  f_name  CHAR(15 CHAR);
  l_name   VARCHAR2(15 CHAR);
BEGIN
  f_name := 'Allen  ';
  l_name  := 'Munra  ';
 
  DBMS_OUTPUT.PUT_LINE('*' || f_name || '*');
  DBMS_OUTPUT.PUT_LINE('*' || l_name || '*');
END;
/
