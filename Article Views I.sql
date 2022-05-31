# Write your MySQL query statement below
SELECT DISTINCT id
FROM
    (SELECT author_id as id
    FROM Views
    WHERE author_id = viewer_id) as temp
ORDER BY id ASC;
