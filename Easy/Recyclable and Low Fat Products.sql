/*
Write an SQL query to find the ids of products that are both low fat and recyclable.

Return the result table in any order.
*/
select product_id from products where low_fats='Y' and recyclable='Y'
/*
In this solution I used where to filter the products table to low fats value Y and recyclable value Y
*/