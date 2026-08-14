# Write your MySQL query statement below
SELECT 
     A.activity_date AS day, 
COUNT(DISTINCT A.user_id)
     AS active_users 
FROM Activity A

GROUP BY A.activity_date
HAVING active_users>0 AND A.activity_date IN (SELECT A1.activity_date FROM Activity A1 WHERE A1.activity_date BETWEEN  '2019-06-28' AND  '2019-07-27')
ORDER BY activity_date;