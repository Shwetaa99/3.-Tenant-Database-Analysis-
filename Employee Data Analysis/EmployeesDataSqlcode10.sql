--10  Write a query to get the house details of the house having highest occupancy


select top 1 house_type, bhk_type, bed_count,	furnishing_type, beds_vacant, house_id, (bed_count - beds_vacant) as bed_occupancy
from Houses
order by bed_occupancy desc