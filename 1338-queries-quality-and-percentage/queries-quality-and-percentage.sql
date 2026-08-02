# Write your MySQL query statement below
SELECT q1.query_name, 
 ROUND(
    (SUM(q1.rating/position))/COUNT(q1.query_name),2) 
    AS quality,
 ROUND(
    (SELECT Count(q2.rating) FROM Queries q2 where q1.query_name=q2.query_name and q2.rating<3)*100/COUNT(q1.query_name),2)
    AS poor_query_percentage 
FROM Queries q1
GROUP BY q1.query_name;