/* Write your T-SQL query statement below */
SELECT
    S.student_id,  S.student_name, SUB.subject_name,  COUNT(EX.student_id) AS attended_exams
FROM
    Students S
CROSS JOIN
    Subjects SUB
LEFT JOIN 
    Examinations EX
ON  
    S.student_id =EX.student_id
AND 
    SUB.subject_name= EX.subject_name 
GROUP BY
     S.student_id,S.student_name, SUB.subject_name
ORDER BY
     S.student_id;
