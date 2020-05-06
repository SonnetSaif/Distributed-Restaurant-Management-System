set serveroutput on;

DECLARE

--    input number;
    output number;

begin

  
  output := gettotalcustomer(output);
  DBMS_OUTPUT.PUT_LINE ('Total Number of Customer is: '||  output);
  
end;
/