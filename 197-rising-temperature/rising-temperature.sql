/* Write your T-SQL query statement below */
select w2.id
 from weather w1 join weather w2 
 on  w2.recordDate = DATEADD(day, 1, w1.recordDate)
  and w1.temperature<w2.temperature;