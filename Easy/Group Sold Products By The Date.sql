/*
Write an SQL query to find for each date the number of different products sold and their names.

The sold products names for each date should be sorted lexicographically.

Return the result table ordered by sell_date.
*/
select sell_date,count(product) as num_sold,STRING_AGG(product, ',' ) 
WITHIN GROUP (ORDER BY product ASC)  As products From (select distinct * from Activities ) as t 
group by sell_date order by sell_date
/*
In this solution I get count of product and name of products for each sell date so I used string_agg to get name of products separated by comma and ordered by name for each sell date
*/