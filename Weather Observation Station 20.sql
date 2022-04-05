/*
Enter your query here.
*/
SELECT ROUND(S.LAT_N, 4)
FROM STATION AS S
WHERE (SELECT COUNT(LaT_N)
       FROM STATION
       WHERE LaT_N < S.LAT_N)
       =
       (SELECT COUNT(LaT_N)
       FROM STATION
       WHERE LaT_N > S.LAT_N);
