/*
Write an SQL query to find for each user, the join date and the number of orders they made as a buyer in 2019.

Return the result table in any order.
*/
select user_id as buyer_id , join_date , count(order_id) as orders_in_2019 
from users left join (select order_date,buyer_id,order_id from orders where year(order_date)=2019) as orders_as on users.user_id=orders_as.buyer_id  group by user_id,join_date
/*
In this solution I used subquery to get the order date and buyer id and order id that happened in 2019 and then join it with users to get the number of orders each user made in 2019
Note: Left join is used to get all the users and the number of orders they made and who didn't made any order in 2019 which will be 0 in the number of orders
*/