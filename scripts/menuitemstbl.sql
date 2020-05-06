create or replace view menu_view as
select *
from menu_item
union all 
select *
from menu_item2;

select * from menu_view;