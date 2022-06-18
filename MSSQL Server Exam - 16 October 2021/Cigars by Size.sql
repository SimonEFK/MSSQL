SELECT 
c.LastName,
AVG(s.[Length]) AS CiagrLength,
CEILING(AVG(s.RingRange)) AS CiagrRingRange
FROM Clients AS c
JOIN ClientsCigars AS cc ON cc.ClientId=c.Id
JOIN Cigars AS cgrs  ON cgrs.Id=cc.CigarId
JOIN Sizes AS s ON s.Id=cgrs.SizeId
GROUP BY c.LastName
ORDER BY CiagrLength DESC