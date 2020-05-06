create or replace view staff_view as
select *
from Staff
union all
select *
from staff2;

select * from staff_view;