/*
Write an SQL query that reports the products that were only sold in the first quarter of 2019. That is, between 2019-01-01 and 2019-03-31 inclusive.

Return the result table in any order.
*/
select product_id ,product_name from 
(select distinct product.product_id,product.product_name from product join sales on product.product_id=sales.product_id where sales.sale_date>='2019-01-01' and sales.sale_date<='2019-03-31') as prod 
where product_id not in (select product_id from sales where sales.sale_date<'2019-01-01' or sales.sale_date>'2019-03-31' )
/*
In this solution I used subquery to get the distinct products which sold on the specified range then filtering the result by excluding the products where sold on other dates 
*/