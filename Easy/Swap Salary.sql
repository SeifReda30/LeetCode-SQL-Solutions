/*
Write an SQL query to swap all 'f' and 'm' values (i.e., change all 'f' values to 'm' and vice versa) with a single update statement and no intermediate temporary tables.

Note that you must write a single update statement, do not write any select statement for this problem.
*/
update Salary
set sex = case
when sex='m' then 'f'
when sex='f' then 'm'
end
/*This problem requires updating table rows sex value on two conditions, so I used case when for updating the value */