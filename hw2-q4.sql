.mode columns
SELECT DISTINCT C.name
FROM FLIGHTS AS F, CARRIERS AS C, MONTHS AS M
WHERE F.carrier_id = C.cid
AND F.month_id = M.mid
GROUP BY C.name, F.month_id, F.day_of_month
HAVING COUNT(*) > 1000;