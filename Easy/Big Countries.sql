/*
A country is big if:

it has an area of at least three million (i.e., 3000000 km2), or
it has a population of at least twenty-five million (i.e., 25000000).
Write an SQL query to report the name, population, and area of the big countries.
*/
select name,population,area from world where area>=3000000 or population>=25000000
/*
Basic Select Statement with Filtering using where
*/