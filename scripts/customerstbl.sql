create or replace view customers_view as
select *
from customers
union all
select *
from Customers2;

select * from customers_view;