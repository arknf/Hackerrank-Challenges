# Write your MySQL query statement below
SELECT tb1.*
FROM Stadium AS tb1, Stadium AS tb2, Stadium AS tb3
WHERE ( (tb1.id + 1 = tb2.id AND tb1.id + 2 = tb3.id) 
       OR (tb1.id - 1 = tb2.id AND tb1.id + 1 = tb3.id) 
       OR (tb1.id - 2 = tb3.id AND tb1.id - 1 = tb2.id) ) AND
       (tb1.people >= 100 AND tb2.people >= 100 AND tb3.people >= 100)
GROUP BY tb1.id
ORDER BY tb1.id;
