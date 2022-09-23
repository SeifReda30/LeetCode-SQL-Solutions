/*
Write an SQL query that will, for each user, return the number of followers.

Return the result table ordered by user_id.
*/
select user_id,count(follower_id) as followers_count from Followers group by user_id order by user_id
/*
In this solution I got number of follower for each user ordered by user id 
*/