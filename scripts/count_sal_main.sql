set serveroutput on;

DECLARE

--    input number;
    output number;

begin

  
  output := gettotalsal(output);
  DBMS_OUTPUT.PUT_LINE ('Total Salary of Staffs is: '||  output);
  
end;
/