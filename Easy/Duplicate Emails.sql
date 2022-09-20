/*
Write an SQL query to report all the duplicate emails.
*/
select email from (select email,count(email) as count_email from person group by email) as newtable where count_email>1
/* 
In this solution I used a derived table to select all emails and the count of each email and then select from it the emails which it's count is more than one.
*/