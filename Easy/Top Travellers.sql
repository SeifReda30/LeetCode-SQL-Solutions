/*
Write an SQL query to report the distance traveled by each user.

Return the result table ordered by travelled_distance in descending order, if two or more users traveled the same distance, order them by their name in ascending order.
*/
select name,isnull (sum(distance),0) as travelled_distance 
from users 
left join 
rides on users.id=rides.user_id group by users.id,name order by sum(distance) desc , name asc
/*
In this solution I used left join to the sum of distance for each user even if the user didn't made any distance so the sum of distance will be zero instead of null
*/
