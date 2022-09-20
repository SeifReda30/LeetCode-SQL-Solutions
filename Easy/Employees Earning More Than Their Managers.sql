/*
Write an SQL query to find the employees who earn more than their managers.

Return the result table in any order.
*/

select emp.name as Employee from employee as emp join employee as manger on emp.managerid = manger.id and emp.salary >= manger.salary

/*
In this query I used self join as I joined two objects of the employee table, first object is treated as the employee data and the second one is treated as manager data so the join codition is linking the two objects and retruning the data of every employee with the data of his manager, finally filtered the result with only the employees whose salary is greater than their managers' salary 
*/