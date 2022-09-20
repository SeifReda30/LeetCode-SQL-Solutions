/*

Write an SQL query to report the nth highest salary from the Employee table. If there is no nth highest salary, the query should report null.

*/

CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        case when @N > (select count(*) from (select distinct salary from employee) as a)
then null else (SELECT min(a.salary) from  (select distinct top (@N) salary from Employee order by salary desc) as a) end 
        
    );
END

/*
This problem is similar to previous problem but it is more general as it print the nth highest salary.
- so in the solution the output will be null if the N value is greater than the total number of salaries in the table, ex: the input N is 3 and there are 2 distinct salaries only in the table
- Otherwise The nth highest salary will be the minimum value of the top N highest salaries of the distinct salaries
*/