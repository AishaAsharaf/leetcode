# Write your MySQL query statement below
SELECT user_id, CONCAT(UPPER(LEFT(Lower(name),1)), LOWER(SUBSTRING(name,2))) AS name FROM
Users ORDER BY user_id;