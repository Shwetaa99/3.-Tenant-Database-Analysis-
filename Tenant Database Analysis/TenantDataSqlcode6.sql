--6   Create a view 'vw_tenant' find profile_id,rent,move_in_date,house_type,beds_vacant,description and city of tenants who shifted on/after 30th april 2015 and are living in houses having vacant beds and its address.

drop view if exists vw_tenant

Create View vw_tenant as
select 
t.profile_id, t.rent, t.move_in_date, h.house_type, h.beds_vacant, a.[description], a.city
from [Tenancy History] as t
join
Houses as h
on t.house_id = h.house_id
join 
Addresses as a
on t.house_id = a.house_id
where  t.move_in_date >= '2015-04-30'
and h.beds_vacant >0

select* from vw_tenant

select * from vw_tenant