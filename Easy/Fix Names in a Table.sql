/*
Write an SQL query to fix the names so that only the first character is uppercase and the rest are lowercase.

Return the result table ordered by user_id.
*/
select user_id,CASE WHEN SUBSTRING(name, 1, 1) between 'a' and 'z' then concat (upper(SUBSTRING(name, 1, 1)),lower(SUBSTRING(name, 2, len(name)))) Else concat( SUBSTRING(name, 1,1) ,lower(SUBSTRING(name, 2, len(name))))  end as name from users order by user_id
/*
In this solution I used substring to get the first character of the name and check if it is a small character then the result of the name will be converting the first character to its upper case and concatinating it to rest of characters after converting them to small characters, else then the result will be the first character concatenated with rest of characters after converting them to small
*/