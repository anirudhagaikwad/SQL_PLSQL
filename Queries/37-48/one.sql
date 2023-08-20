/*
Write a PL/SQL program that creates a stored procedure in the database.
*/
declare
        procedure p_hello
        is
        my_val varchar2(256):='Hello, World!';
        begin
            dbms_output.put_line(my_val);
        end;

begin
          p_hello;
end;
