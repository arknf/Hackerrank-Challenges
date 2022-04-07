# Write your MySQL query statement below
SELECT email
FROM (SELECT email, COUNT(email) AS TOTAL_APPEAR
     FROM Person
     GROUP BY email) AS TOTAL
WHERE TOTAL_APPEAR > 1;
