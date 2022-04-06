/*
Enter your query here.
*/
SELECT
        W.id,
        P.age,
        W.coins_needed,
        W.power
FROM Wands AS W
INNER JOIN Wands_Property AS P
ON W.code = P.code
WHERE 
        P.is_evil = 0 AND
        W.COINS_NEEDED = (SELECT MIN(A.coins_needed)
                         FROM Wands AS A
                         INNER JOIN Wands_Property AS B
                         ON A.code = B.code
                         WHERE
                                A.power = W.power AND 
                                B.age = P.age) 
ORDER BY W.power DESC, P.age DESC;
