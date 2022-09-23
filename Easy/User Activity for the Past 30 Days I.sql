/*
Write an SQL query to find the daily active user count for a period of 30 days ending 2019-07-27 inclusively. A user was active on someday if they made at least one activity on that day.

Return the result table in any order.
*/
select activity_date as day , count(distinct user_id) as active_users from activity group by activity_date 
having activity_date between '2019-06-28' and '2019-07-27' and count(user_id)>0
/*
In this solution I selected the active users for each day by selecting the day and the number of each distinct user and then filtered the rows by the activity date range and the activity date whose total number of active users > 0
*/
