create or replace procedure getCustomerDetails(temp in number)
  is

  cid customers2.customer_id%type;
  cname customers2.customer_name%type;
  cphone customers2.phone%type;
  cloc customers2.location%type;
  invalid_id  EXCEPTION;
  
  cursor c_cursor is
  select * from customers2
  where customer_id = temp;

begin
    if temp <= 0 then
        RAISE invalid_id;
    else
        open c_cursor;
            -- loop
                fetch c_cursor into cid, cname, cphone, cloc;
                -- exit when c_cursor%notfound;
            -- end loop;
            DBMS_OUTPUT.PUT_LINE ('Id: '||  cid);
            DBMS_OUTPUT.PUT_LINE ('Name: '||  cname);
            DBMS_OUTPUT.PUT_LINE ('Phone: '||  cphone);
            DBMS_OUTPUT.PUT_LINE ('Location: '||  cloc);
        close c_cursor;
    end if;
    
    exception
        when invalid_id then 
            dbms_output.put_line('ID must be greater than zero!'); 
        When others then 
            dbms_output.put_line('Error!');
end;
/