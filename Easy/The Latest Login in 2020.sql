/*
Write an SQL query to report the latest login for all users in the year 2020. Do not include the users who did not login in 2020.
*/
select user_id , max(time_stamp) as last_stamp from logins where year(time_stamp)=2020 group by  user_id
/*
In this solution I used max function to get the maximum time stamp of each user id and then filter the result by only users whose time stamp year is 2020
*/