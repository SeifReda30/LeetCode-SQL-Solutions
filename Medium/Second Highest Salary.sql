/*
Write an SQL query to report the second highest salary from the Employee table. If there is no second highest salary, the query should report null.

The query result format is in the following example.
*/

select case when (select count(*) from (select distinct salary from employee) as a)=1 then null else SecondHighestSalary end as SecondHighestSalary from  (select min(salary) as SecondHighestSalary from (select distinct top 2 salary from employee order by salary desc) as a) as b

/*
In this Problem we should get the second highest salary and it looks easy but the code will expose to test cases which will output null

1- The Output may be Null which indicate that there is no second highest salary and it is the case which the table contains only one salary, and I solved this case by counting the total number of distinct salaries in employee table and if there is only one row then it is null

2- If there are more than one salary so we can get the second highest salary by selecting the top 2 distinct salaries from the table ordered by the salary value desc, and then taking the minimum salary from the top 2 highest salaries and that will give us the second highest salary

*/