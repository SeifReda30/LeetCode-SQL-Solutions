/*
Write an SQL query to report the IDs of all the employees with missing information. The information of an employee is missing if:

The employee's name is missing, or
The employee's salary is missing.
Return the result table ordered by employee_id in ascending order.
*/
select case when employees.employee_id is null then salaries.employee_id when salaries.employee_id is null then employees.employee_id end as employee_id 
from employees 
full  join 
salaries on employees.employee_id=salaries.employee_id 
where employees.employee_id is null or salaries.employee_id is null  order by employee_id
/*
In this solution I used full join to get all the matched and non matched rows between employees and salaries tables and then filter the join result to only employees in employee table who don't have salary information in salary table and employees in salary table who don't have id in employee table and then getting the correct id of employees with missing id and correct salary with missing salary
*/