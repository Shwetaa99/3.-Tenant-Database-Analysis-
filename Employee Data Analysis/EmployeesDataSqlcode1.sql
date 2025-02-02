--1.   Write a query to get Profile ID, Full Name and Contact Number of the tenant who has stayed with us for the longest        time period in the past. 


select p.profile_id , concat(first_name, ' ', last_name) as Full_Name, p.phone , t.move_in_date,t.move_out_date
from Profiles as p
right join
[Tenancy History] as t
on p.profile_id = t.profile_id
where move_out_date != 'NULL'
order by DateDiff(day, t.move_in_date , t.move_out_date) desc
