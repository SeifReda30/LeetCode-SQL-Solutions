/*
Write an SQL query that will, for each date_id and make_name, return the number of distinct lead_id's and distinct partner_id's.
*/
select date_id,make_name,count(distinct lead_id) as unique_leads,count(distinct partner_id) as unique_partners 
from dailysales group by date_id,make_name
/*
In this solution I got count of distinct lead id and count of distinct partner id for each date id and make name
*/