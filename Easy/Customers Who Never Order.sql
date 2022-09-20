/*
Write an SQL query to report all customers who never order anything.

Return the result table in any order.
*/

select customers.name as Customers from customers left join orders on customers.id=orders.customerId where customerId is null

/*
In this solution we need all the customers who exist on customers table but don't exist in orders table so left join is the best solution to select all the matched rows in both tables and non matced rows from the customers table and finally filter the results with the non matched rows from the customers table only
*/