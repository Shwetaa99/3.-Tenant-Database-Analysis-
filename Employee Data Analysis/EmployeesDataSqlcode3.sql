--3   Write a query to display profile id, full name, phone, email id, city, house id, move_in_date , move_out date, rent,       total number of referrals made, latest employer and the occupational category of all the tenants  living in Banglore       or Pune in the time period of jan 2015 to jan 2016 sorted by their rent in descending order

select* from [Tenancy History]
select* from Referral
select * from Profiles
select* from [Employee Status]


select p.profile_id, p.Full_name, p.phone, p.email_id, p.city, t.house_id , t.move_in_date ,t.move_out_date, t.rent , count(r.profile_id) as num_referrals, e.latest_employer, e.occupational_category 
from Profiles as p
join
[Tenancy History] as t
on p.profile_id = t.profile_id
left join
[Employee Status] as e
on p.profile_id = e.profile_id
left join
Referral as r
on p.profile_id = r.profile_id
where referral_valid = 1
and valid_from >= '2015-01-01'
and valid_till <= '2016-12-31'
group by  p.profile_id, p.Full_name, p.phone, p.email_id, p.city, t.house_id , t.move_in_date ,t.move_out_date, t.rent ,r.referral_valid, e.latest_employer, e.occupational_category 
order by t.rent desc
