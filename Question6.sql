SELECT *
from salescontract s
INNER JOIN inventory i on s.VIN = i.VIN
INNER JOIN dealership d on i.DealershipID = d.DealershipID
Where s.date between '2023-09-1' and '2023-10-1' 
and d.name = 'Dev Exotic Dealership'
