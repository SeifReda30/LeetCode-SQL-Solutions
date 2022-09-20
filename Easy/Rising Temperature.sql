/*
Write an SQL query to find all dates' Id with higher temperatures compared to its previous dates (yesterday).

Return the result table in any order.
*/

select b.id as Id from Weather as a join Weather as b on 
(datediff(year,a.recordDate,b.recordDate)=0 and datediff(month,a.recordDate,b.recordDate)=0 and datediff(day,a.recordDate,b.recordDate)=1 and a.temperature<b.temperature) 
or (datediff(year,a.recordDate,b.recordDate)=1 and datediff(month,a.recordDate,b.recordDate)=1 and datediff(day,a.recordDate,b.recordDate)=1 and a.temperature<b.temperature) 
or (datediff(year,a.recordDate,b.recordDate)=0 and datediff(month,a.recordDate,b.recordDate)=1 and datediff(day,a.recordDate,b.recordDate)=1 and a.temperature<b.temperature)

/*
In this problem the code will expose to 3 cases and should handle all of them
1-First case is that the two dates are different in year and month and the difference between days is 1, so the first date is the last day at a year and the second date is the first day at the new year, so the first date is the previous day of the second date, finally if the temperature of the second date is higher than the first one so the two dates satisfy all the conditions
2-Second case is that the two dates are same year but different month and the difference between days is 1, so the first date is the last day at a month and the second date is the first day at the new month, so the first date is the previous day of the second date, finally if the temperature of the second date is higher than the first one so the two dates satisfy all the conditions
3-Third case is that the two dates are same in year and month and the difference between days is 1, so the first date is the previous day of the second date, finally if the temperature of the second date is higher than the first one so the two dates satisfy all the conditions
*/
