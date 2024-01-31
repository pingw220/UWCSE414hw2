.mode columns
SELECT C.name, (SUM(F1.canceled) * 1.0) / (COUNT(F1.fid) * 1.0) * 100.0 AS percentage
FROM FLIGHTS AS F1, CARRIERS AS C
WHERE F1.origin_city = "Seattle WA"
AND F1.carrier_id = C.cid
GROUP BY C.name
HAVING percentage > 0.5
ORDER BY percentage ASC;