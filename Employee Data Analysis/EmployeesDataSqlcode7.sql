--7  Write a code to extend the valid_till date for a month of tenants who have referred more than one time

select* from Referral
select * from Profiles

update Referral
set valid_till = DateAdd(Month, 1, Referral.valid_till) 
OUTPUT (Inserted.profile_id), Inserted.valid_till
from Referral
inner join(
SELECT r.profile_id
FROM Referral AS r
LEFT JOIN Profiles AS p 
ON r.profile_id = p.profile_id
GROUP BY r.profile_id
HAVING COUNT(p.full_name) > 1 
) as J 
on Referral.profile_id = J.profile_id




