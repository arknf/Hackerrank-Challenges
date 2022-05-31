# Write your MySQL query statement below
SELECT U.name, SUM(T.amount) as balance
FROM Transactions AS T
INNER JOIN Users AS U
ON T.account = U.account
GROUP BY U.name
HAVING balance > 10000;
