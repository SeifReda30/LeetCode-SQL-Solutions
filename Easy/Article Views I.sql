/*
Write an SQL query to find all the authors that viewed at least one of their own articles.

Return the result table sorted by id in ascending order.
*/
select distinct author_id as id from (select author_id from views where author_id=viewer_id) as auth order by author_id asc
/*
In this solution I used subquery to get the author_id from views table who only the same id of the viewer_id so that get the authors who are the viewers of their articles
*/