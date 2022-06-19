SELECT 
o.Name+'-'+a.Name AS OwnersAnimals,
o.PhoneNumber,
c.Id AS CageId
FROM Owners AS o
JOIN Animals AS a ON o.Id=a.OwnerId
JOIN AnimalsCages AS ac ON ac.AnimalId=a.Id
JOIN Cages AS c ON c.Id=ac.CageId
JOIN AnimalTypes AS t ON t.Id=a.AnimalTypeId
WHERE t.AnimalType = 'mammals'
ORDER BY o.Name ASC,a.Name DESC