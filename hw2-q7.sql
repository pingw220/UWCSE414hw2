.mode columns
SELECT SUM(F.capacity) AS capacity
FROM FLIGHTS AS F, MONTHS AS M
WHERE (F.origin_city = 'Seattle WA'
OR F.origin_city = 'San Francisco CA')
AND (F.dest_city = 'Seattle WA'
OR F.dest_city = 'San Francisco CA')
AND F.month_id = M.mid
AND M.month = 'July'
AND F.day_of_month = 10;