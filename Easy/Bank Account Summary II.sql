/*
Write an SQL query to report the name and balance of users with a balance higher than 10000. The balance of an account is equal to the sum of the amounts of all transactions involving that account.
*/
select name,sum(amount) as balance 
from users 
join transactions on users.account=transactions.account group by name having sum(amount)>10000
/*
In this solution I get sum of amount for each name by joining users and transactions table and then filter the name in the final table by whose sum of amount>10000 
*/