SELECT *
FROM vehicles as v
INNER JOIN inventory i on v.VIN = i.VIN
INNER JOIN dealership d on i.DealershipID = d.DealershipID
WHERE d.Name= 'Dev Exotic Dealership';