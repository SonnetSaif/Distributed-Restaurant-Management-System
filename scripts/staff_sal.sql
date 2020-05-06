create or replace procedure staff_sal(temp1 in number, temp2 in number)
    is

    stid staff2.staff_id%type;
    stname staff2.staff_name%type;
    stsal staff2.staff_salary%type;
  
    invalid_range  EXCEPTION;
    invalid_character  EXCEPTION;
  
    cursor s_cursor is
    select staff_id, staff_name, staff_salary from staff2
    where staff_salary between temp1 and temp2;

begin
    if temp1 <= 0 or temp2 <= 0 then
        raise invalid_range;
    elsif temp1 >= 'a' and temp1 <= 'z'  or temp2 >= 'a' and temp2 <= 'z' then
        raise invalid_character;
    elsif temp1 >= 'A' and temp1 <= 'Z' or temp2 >= 'A' and temp1 <= 'Z' then
        raise invalid_character;
    else
        open s_cursor;
            loop
                fetch s_cursor into stid, stname, stsal;
                exit when s_cursor%notfound;
                DBMS_OUTPUT.PUT_LINE('ID : ' || TO_CHAR(stid));
                DBMS_OUTPUT.PUT_LINE('Name : ' || TO_CHAR(stname));
                DBMS_OUTPUT.PUT_LINE('Salary : ' || TO_CHAR(stsal));
            end loop;
            
        close s_cursor;
    end if;
    
    exception
        when invalid_range then 
            dbms_output.put_line('Salary must be greater than zero!'); 
        When invalid_character then 
            dbms_output.put_line('Salary consists only number!');
        when others then
            dbms_output.put_line('Error');
            
end staff_sal;
/