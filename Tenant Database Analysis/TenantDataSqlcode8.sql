--8   Write a query to get Profile ID, Full Name, Contact Number of the tenants along with a new column 'Customer Segment'wherein if the tenant      pays rent greater than 10000, tenant falls in Grade A segment, if rent is between 7500 to 10000, tenant falls in Grade B else in Grade C.

select p.profile_id, p.full_name, p.phone, t.rent,
case 
		when rent >10000 then ' Grade A'
		when rent > 7500 then 'Grade B'
		else 'Grade C'
end AS [Customer Segment]
from Profiles as p
join
[Tenancy History] as t 
on p.profile_id = t.profile_id
order by t.rent
