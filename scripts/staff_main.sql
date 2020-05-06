set serveroutput on;

DECLARE

    input1 number;
    input2 number;
--    output varchar2(200);

begin

    input1 := &Enter_Upper_Range;
    input2 := &Enter_Lower_Range;
    staff_sal(input1, input2);
  
end;
/