--5   Write a query to find the rent generated from each city and also the total of all cities.

select * from Profiles
select* from [Tenancy History]

select  p.city , sum(t.rent) as total_rent
from Profiles as p
join
[Tenancy History]  as t
on p.profile_id = t.profile_id
group by p.city 
union all
select 'total' as city,
SUM(t.rent) AS total_rent
FROM [Tenancy History] AS t

