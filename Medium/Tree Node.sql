/*
Each node in the tree can be one of three types:

"Leaf": if the node is a leaf node.
"Root": if the node is the root of the tree.
"Inner": If the node is neither a leaf node nor a root node.
Write an SQL query to report the type of each node in the tree.

Return the result table ordered by id in ascending order.
*/
select id,case when p_id is null then 'Root' when id in (select p_id from tree) and p_id is not null then 'Inner' else 'Leaf' end as 'type' from tree order by id
/*
In this solution I used case when to print the Node name for each id, so if the parent id is null then it is Root Node, if the id is parent id and not null so it is inner, else it is leaf
*/