set serveroutput on;

create or replace trigger trig1
after update on menu_item2
for each row
enable

--declare
--
--    tbl_name varchar2(100);  
    
begin

--    tbl_name := 'student';
--    dbms_output.put_line('A new value has been inserted in ' || tbl_name || ' at ' || sysdate); 
    dbms_output.put_line("Menu_Items2 table has been successfully modified");
end;
/

--set serveroutput on;
--
--drop table temp_table_trigg;
--create table table_trigg
--(menu_item_price_old number, menu_item_price_new number , log_date date);
--
--create or replace trigger meals_trigg
--after update
--on Meals
--for each row
--
--begin
--    insert into temp_table_trigg
--    values(:menu_item_price_old, :menu_item_price_new, sysdate);
--end;
--/

