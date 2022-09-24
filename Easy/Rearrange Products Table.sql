/*
Write an SQL query to rearrange the Products table so that each row has (product_id, store, price). If a product is not available in a store, do not include a row with that product_id and store combination in the result table.

Return the result table in any order.
*/
select a.product_id,'store1' as store, a.store1 as price from products as a join products as b on a.store1 is not null and a.product_id =b.product_id 
union all
select a.product_id,'store2' as store, a.store2 as price from products as a join products as b on a.store2 is not null and a.product_id =b.product_id 
union all
select a.product_id,'store3' as store, a.store3 as price from products as a join products as b on a.store3 is not null and a.product_id =b.product_id 
/*
In this solution I used self join to join the products table with it self for each store, so the join condition is to check if the store is not null for a product id and if the condition is satisfied so it will print product id and the name of the store and the store price
and used union all to concatenate the rows which satisfied the condition for each store and product id
*/