/*
Write a PL/SQL function calculates the differences between total areas of circles with a number of radii.
*/

declare
        v_pi_nr NUMBER:=3.14;
        function f_getDiff_Nr(i_rad1_nr NUMBER,i_rad2_nr NUMBER)
        return NUMBER is
                v_area1_nr NUMBER;
                v_area2_nr NUMBER;
                v_out_nr NUMBER;
          function f_getArea_Nr (i_rad_nr NUMBER)
          return NUMBER
          is
        begin
           return v_pi_nr*(i_rad_nr**2);
        end;
 
      begin
           v_area1_nr := f_getArea_Nr (i_rad1_nr);
           v_area2_nr := f_getArea_Nr (i_rad2_nr);
           v_out_nr   :=v_area1_nr-v_area2_nr;
           return v_out_nr;
      end;
begin
      DBMS_OUTPUT.put_line('Diff between 3 and 4: '||f_getDiff_Nr(4,3));
      DBMS_OUTPUT.put_line('Diff between 4 and 5: '||f_getDiff_Nr(5,4));
      DBMS_OUTPUT.put_line('Diff between 5 and 6: '||f_getDiff_Nr(6,5));
end;
/
