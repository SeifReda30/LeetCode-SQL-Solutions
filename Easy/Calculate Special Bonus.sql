/*
Write an SQL query to calculate the bonus of each employee. The bonus of an employee is 100% of their salary if the ID of the employee is an odd number and the employee name does not start with the character 'M'. The bonus of an employee is 0 otherwise.

Return the result table ordered by employee_id.
*/
SELECT employee_id,
CASE
    WHEN employee_id%2!=0 and name not like 'M%'  THEN salary
    ELSE 0
END AS bonus
FROM employees order by employee_id;
/*
In this solution I used case when to get salary of employee based on condition
if employee id is odd number and employee name doesn't start with M then print his salary else then his salary will be 0
*/