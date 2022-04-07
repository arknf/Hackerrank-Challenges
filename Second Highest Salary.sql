#Solution 1
# Write your MySQL query statement below
SELECT 
    CASE
        WHEN salary>0 THEN salary
        ELSE "NULL"
    END AS SecondHighestSalary
FROM (SELECT * 
      FROM Employee
     ORDER BY salary DESC) AS SORTEDSALARY
WHERE salary != (SELECT MAX(salary)
                FROM Employee)
ORDER BY salary DESC LIMIT 1

#Solution 2
# Write your MySQL query statement below
SELECT MAX(salary) AS SecondHighestSalary
FROM Employee
WHERE salary NOT IN (SELECT MAX(salary)
                    FROM Employee)
