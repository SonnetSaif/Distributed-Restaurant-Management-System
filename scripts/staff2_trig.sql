set serveroutput on;

create or replace trigger trig2
after insert or update on staff2
for each row
enable

--declare
--
--    tbl_name varchar2(100);  
    
begin

--    tbl_name := 'student';
--    dbms_output.put_line('A new value has been inserted in ' || tbl_name || ' at ' || sysdate); 
    dbms_output.put_line("Staff2 table has been successfully modified");
end;
/