.mode columns
SELECT DISTINCT F.flight_num FROM FLIGHTS AS F, WEEKDAYS AS W, CARRIERS AS C
WHERE F.origin_city = 'Seattle WA'
AND F.dest_city = 'Boston MA'
AND W.did = F.day_of_week_id
AND W.day_of_week = 'Monday'
AND F.carrier_id = C.cid
AND C.name = 'Alaska Airlines Inc.';