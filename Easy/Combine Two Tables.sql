/* 
Write an SQL query to report the first name, last name, city, and state of each person in the Person table. If the address of a personId is not present in the Address table, report null instead.

Return the result table in any order.
*/

select firstname,lastname,city,state from person left join address on person.personid=address.personid 

/* In this Problem we need to select all person data from person table with their city and state from address table, so left join is the best choice her as it joins the two tables returns both matched rows and non-matched rows from the table which written before left join clause  */