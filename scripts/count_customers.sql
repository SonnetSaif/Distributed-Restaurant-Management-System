create or replace function gettotalcustomer(temp out number)
    return number
    is
    
var1 number;
    
  invalid_id  EXCEPTION;
  
  cursor c_cursor is
  select count(customer_id) from customers2;

begin
    
    open c_cursor;
--        loop
            fetch c_cursor into var1;
--            exit when c_cursor%notfound;
--        end loop;
    close c_cursor;
    return var1;
    
end;
/