/*
The cancellation rate is computed by dividing the number of canceled (by client or driver) requests with unbanned users by the total number of requests with unbanned users on that day.

Write a SQL query to find the cancellation rate of requests with unbanned users (both client and driver must not be banned) each day between "2013-10-01" and "2013-10-03". Round Cancellation Rate to two decimal points.
*/

 
with getallunbanned (request_at,total)
as
(
select request_at ,count(*) as total from Trips join Users on (users.users_id=trips.client_id) where ((select banned from users where users_id=client_id)='No') and ((select banned from users where users_id=driver_id)='No') and  request_at>='2013-10-01' and request_at<='2013-10-03' group by request_at
),
getallcanceled(request_at,total) as
(
select request_at ,count(*) as total from Trips join Users on (users.users_id=trips.client_id) and (trips.status='cancelled_by_driver' or trips.status='cancelled_by_client') where ((select banned from users where users_id=client_id)='No') and ((select banned from users where users_id=driver_id)='No') and request_at>='2013-10-01' and request_at<='2013-10-03' group by request_at

)

select a.request_at as Day,cast(round(cast(isnull(b.total,0) as float)/cast(isnull(a.total,0) as float),2) as decimal(5,2)) as [Cancellation Rate]
from
(select * from getallunbanned) as a
left join 
(select * from getallcanceled) as b
on a.request_at=b.request_at

/* The problem is requesting to filter the two tables to get all information of the unbanned users and then get all the unbanned users with cancelled status in the range between '2013-10-01' and '2013-10-03' , so I made two CTEs, one to get the total number of unbanned users gouped by request date and the other to get the total number of unbanned users with cancelled status grouped by request date, finally I joined the output of the two CTEs to get the cancellation rate on each day by joining the two CTEs to get the total number of unbanned users with cancelled status on each day, then for each row of the join result I divided the number of canceled by the number of unbanned users  */
