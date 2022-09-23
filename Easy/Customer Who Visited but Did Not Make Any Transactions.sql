/*
Write an SQL query to find the IDs of the users who visited without making any transactions and the number of times they made these types of visits.

Return the result table sorted in any order.
*/
select customer_id,count(customer_id) as count_no_trans 
from transactions 
right join visits on visits.visit_id=transactions.visit_id  
where transaction_id is null group by customer_id
/*
In this solution I got all customer id and their count in the table who didn't make any transactions by joining the two tables and getting all the matched rows and non matced rows from the visits table which are the rows that we want, then filtering the result of join by only the non matched rows of the join result and that what we want
*/
/*
Another Solution
*/
select customer_id,count(customer_id) as count_no_trans ]
from visits 
where visits.visit_id not in (select visit_id from transactions) group by customer_id