SELECT  d.name
FROM vehicles v
INNER JOIN inventory i on  v.vin = i.vin
INNER JOIN dealership d on i.DealershipID = d.DealershipID
WHERE v.make = 'Koenigsegg';
