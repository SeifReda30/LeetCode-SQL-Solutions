/*
Write an SQL query to report the Capital gain/loss for each stock.

The Capital gain/loss of a stock is the total gain or loss after buying and selling the stock one or many times.

Return the result table in any order.
*/
select stock_name,sum(capital_gain_loss) as capital_gain_loss from 
(select stock_name,CASE when operation = 'Buy' then sum(-price) else sum(price) end as capital_gain_loss from stocks group by stock_name,operation) 
as stock group by stock_name
/*
In this solution I used subquery to get the sum of price for each stock name and operation made so the note in this solution is that if the operation made in the stock was Buy then the price will be negative and if it was Sell then it will be positive so we should consider the operation before summing all the prices for each stock and operation , finally I summed all the total price of Buy and total price of Sell for each stock name to get the total price correctly
*/