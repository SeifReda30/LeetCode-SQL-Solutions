/*
Write an SQL query to report all the classes that have at least five students.

Return the result table in any order.
*/
select class from (select class,count(student) as stud from courses group by class) as newtable where stud>=5
/*
In this solution I used subquery to select each class with the number of students and then selecting the class whose total number of students >= 5
*/