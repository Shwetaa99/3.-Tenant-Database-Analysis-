--9   Write a query to get Fullname, Contact, City and House Details of the tenants who have not referred even once

select p.Full_name, p.phone, p.city, t.house_id, h.house_type, h.bhk_type, h.bed_count ,h.furnishing_type, h.beds_vacant
from Houses as h
left join
[Tenancy History] as t
on h.house_id = t.house_id
left join
Profiles as p
on t.profile_id = p.profile_id
left join
Referral as r
on p.profile_id = r.profile_id
group by p.Full_name, p.phone, p.city, t.house_id, h.house_type, h.bhk_type, h.bed_count ,h.furnishing_type, h.beds_vacant
having count(r.profile_id)=0 

