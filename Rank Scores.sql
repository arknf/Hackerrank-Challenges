# Write your MySQL query statement below
SELECT score, ranking as "rank"
FROM (SELECT ROUND(score, 5) as score, DENSE_RANK() OVER(ORDER BY score DESC) as ranking
      FROM Scores
      ORDER BY ranking) as temp
