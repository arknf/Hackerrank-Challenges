# Write your MySQL query statement below
SELECT customer_number
FROM (SELECT customer_number, COUNT(customer_number) AS TOTAL
     FROM Orders
     GROUP BY customer_number
     ORDER BY TOTAL DESC LIMIT 1) AS TEMP
