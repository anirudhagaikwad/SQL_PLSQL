/*
Write a PL/SQL program that creates a  procedure which have parameters passed by reference. 
*/
create or replace procedure p_validate(io_string_tx IN OUT NOCOPY VARCHAR2)
is
  v_invalid_tx VARCHAR2(8):='test';
begin
  io_string_tx:=replace (io_string_tx,v_invalid_tx);
  if length(io_string_tx)>4000
  then
      io_string_tx:=substr(io_string_tx,1,3997)||'...';
  end if;
end;
/
