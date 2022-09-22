/*
Write an SQL query to find the customer_number for the customer who has placed the largest number of orders.

The test cases are generated so that exactly one customer will have placed more orders than any other customer.
*/
select top 1 customer_number from (select customer_number,count(customer_number) as cust from orders group by customer_number) as custom order by cust desc

/* In this solution I used subquery to get the customer number and the total number of orders he made ordered desc by the total number of orders, then selected the top 1 customer between them */