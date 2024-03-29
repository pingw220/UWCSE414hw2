.mode columns
SELECT C.name, SUM(F.departure_delay) AS delay
FROM FLIGHTS AS F, CARRIERS AS C
WHERE F.carrier_id = C.cid
GROUP BY C.name;