# Write your MySQL query statement below
SELECT class
FROM (SELECT *
      FROM Courses
      GROUP BY class
      HAVING COUNT(class) >= 5) AS TEMP
