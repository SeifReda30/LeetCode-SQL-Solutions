/*
Write an SQL query to report the first login date for each player.

Return the result table in any order.
*/
select player_id, min(event_date) as first_login from activity group by player_id

/* the solution is about getting the minimum event date for each player id */