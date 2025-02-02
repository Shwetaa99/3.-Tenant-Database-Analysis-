--2  Write a query to get the Full name, email id, phone of tenants who are married and paying rent > 9000 using subqueries

select * from Profiles                                                                  
select* from [Tenancy History]


select concat(first_name, ' ' ,last_name)as Full_name, p.email_id, p.phone ,p.marital_status, t.rent 
from  Profiles as p
right join
[Tenancy History] as t
on p.profile_id = t.profile_id
where p.marital_status = 'Y'
and t.rent IN (select rent from [Tenancy History] where rent > 9000)
order by rent
