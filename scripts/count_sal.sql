create or replace function gettotalsal(temp out number)
    return number
    is
    
var1 number;
  
  cursor s_cursor is
  select count(staff_salary) from staff2;

begin
    
    open s_cursor;
--        loop
            fetch s_cursor into var1;
--            exit when c_cursor%notfound;
--        end loop;
    close s_cursor;
    return var1;
    
end;
/