-- find the number of distinct lead_id's and distinct partner_id's.
-- leetcode 1693

select date_id,make_name,COUNT(DISTINCT lead_id) as unique_leads,
COUNT(DISTINCT partner_id) as unique_partners
from DailySales
Group By date_id,make_name
