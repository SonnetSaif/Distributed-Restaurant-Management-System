set serveroutput on;

DECLARE

    input number;
    output varchar2(200);

begin

  input := &Enter_Customer_Id;
  getCustomerDetails(input);
  
end;
/