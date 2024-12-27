WITH CTE AS (SELECT distinct
   power ((p1.x - p2.x),2) AS x_square, 
   power((p1.y - p2.y), 2) AS y_square
FROM 
    Point2d p1
JOIN 
    Point2d p2
ON 
    p1.x != p2.x OR p1.y != p2.y)

SELECT ROUND(SQRT(x_square+y_square),2) as shortest from cte order by shortest limit 1