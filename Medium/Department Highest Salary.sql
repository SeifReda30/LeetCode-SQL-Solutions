/*
Write an SQL query to find employees who have the highest salary in each of the departments.

Return the result table in any order.
*/
select department.name as Department , emp.name as Employee , emp.salary as Salary from employee as emp 
join department on emp.departmentId = department.id and emp.salary =(select max(salary) from employee 
where employee.departmentId=emp.departmentId)

/*
In this solution I select rows of table resulted by joining employee table by department table and selecting the department name and employee name and employee salary then filter the results by the salary of the employee if the salary is the highest in his department
*/