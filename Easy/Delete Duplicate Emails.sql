/*
Write an SQL query to delete all the duplicate emails, keeping only one unique email with the smallest id. Note that you are supposed to write a DELETE statement and not a SELECT one.

After running your script, the answer shown is the Person table. The driver will first compile and run your piece of code and then show the Person table. The final order of the Person table does not matter.
*/
DELETE p1
FROM Person p1
JOIN Person p2
ON p1.email = p2.email AND p1.id > p2.id

/*Basic Problem on Delete statement as I used self join to get all duplicated emails with different id and then delete all rows that the email is duplicated and the id of the email is greater than the matched email id to keep only unique emails with the lowest id */