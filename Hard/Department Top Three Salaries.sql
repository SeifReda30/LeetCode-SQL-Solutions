/*
A company's executives are interested in seeing who earns the most money in each of the company's departments. A high earner in a department is an employee who has a salary in the top three unique salaries for that department.

Write an SQL query to find the employees who are high earners in each of the departments.

Return the result table in any order.
*/
select a.Dept_name as Department,a.Emp_name as Employee,a.salary as Salary from 
(select Department.name as Dept_name,employee.name as Emp_name,Department.id , Employee.salary from Employee join Department on employee.departmentId = department.id where Employee.salary in (select distinct top 3 salary from employee where departmentId=Department.id order by salary desc) ) as a

/*In this solution I used the same concept that I solved department highest salary problem, as I selecting department name and employee name and salary if the salary is existing in the top 3 highest salary in the department assigned to the employee using subquery*/
