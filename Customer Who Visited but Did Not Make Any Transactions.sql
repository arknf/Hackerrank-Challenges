# Write your MySQL query statement below
SELECT V.customer_id, COUNT(*) as count_no_trans
FROM Visits AS V
LEFT JOIN Transactions AS T
ON V.visit_id = T.visit_id
WHERE amount IS NULL
GROUP BY customer_id
ORDER BY count_no_trans DESC;
