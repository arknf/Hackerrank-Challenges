# Write your MySQL query statement below
SELECT name as Customers
FROM (SELECT Customers.name, COUNT(Orders.id) AS COUNT_ORDERS
     FROM Customers
     LEFT JOIN Orders
     ON Customers.id = Orders.customerId
     GROUP BY Customers.name) AS TOTAL_COUNT
WHERE COUNT_ORDERS = 0;
