.mode columns
SELECT C.Name AS carrier, MAX(F.price) AS max_price
FROM FLIGHTS AS F, CARRIERS AS C
WHERE (F.origin_city = 'Seattle WA'
OR F.origin_city = 'New York NY')
AND (F.dest_city = 'Seattle WA'
OR F.dest_city = 'New York NY')
AND F.carrier_id = C.cid
GROUP BY C.name;