/*
Write a SQL query for a report that provides the pairs (actor_id, director_id) where the actor has cooperated with the director at least three times.

Return the result table in any order.
*/
select actor_id , director_id from 
(select actor_id,director_id,count(actor_id) as count_actor from actordirector group by  actor_id,director_id ) as pairs 
where count_actor>=3
/*
In this solution I used subquery to get total numbers of cooperation of actors for each director and then filtering the result by the actors whose total number of cooperation with director>=3 
*/