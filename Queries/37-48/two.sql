/*
Write a PL/SQL program that creates a  procedure which have parameters with default value. 
*/
declare
          procedure p_print
          (i_str1_tx VARCHAR2 :='hello',
           i_str2_tx VARCHAR2 :='world',
           i_end_tx VARCHAR2  :='!' ) is
          begin
               DBMS_OUTPUT.put_line(i_str1_tx||','
                     ||i_str2_tx||i_end_tx);
          end;
begin
         p_print('Hi','there','all');  -- both parameters
         p_print('Hi','people');      -- without the last
         p_print('Hi');               -- only the first
         p_print();                   -- no parameters
         p_print;                     -- no parenthesis
end;
/