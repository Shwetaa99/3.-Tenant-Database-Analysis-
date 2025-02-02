--4   Write a sql snippet to find the full_name, email_id, phone number and referral code of all the tenants who have            referred more than once. Also find the total bonus amount they should receive given that the bonus gets calculated           only for valid referrals.


select p.full_name, p.email_id, p.phone, p.referral_code,r.referral_valid,  count(p.referral_code) as Num_of_Referred , SUM(r.referrer_bonus_amount) AS Total_Bonus_Amount
from Profiles as p
left join
Referral as r
on p.profile_id = r.profile_id
where referral_valid = 1
group by p.full_name, p.email_id, p.phone, p.referral_code, r.referral_valid
having (count(p.referral_code)>1)
order by Total_Bonus_Amount