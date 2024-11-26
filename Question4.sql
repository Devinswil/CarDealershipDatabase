SELECT d.name
FROM vehicles as v
INNER JOIN inventory i on v.VIN = i.VIN
INNER JOIN dealership d on i.DealershipID = d.DealershipID
WHERE v.VIN= '6712489ROLLS2023';

