/*
Write an SQL query to report the names of all the salespersons who did not have any orders related to the company with the name "RED".

Return the result table in any order.
*/
select salesperson.name from salesperson 
where salesperson.sales_id not in (select salesperson.sales_id from salesperson left join orders on salesperson.sales_id=orders.sales_id join company on orders.com_id=company.com_id 
where orders.sales_id in (select orders.sales_id from orders join company on orders.com_id=company.com_id where company.name='RED'))
/*
In this solution I select sales person name whose id only occurs in the table which contains all sales id which didn't have any order with company name = RED
Note: I used left join between sales person and orders to get all sales person who didn't have any orders in general beside who have orders then filtered this table with only who have orders and the orders are not with company RED
*/