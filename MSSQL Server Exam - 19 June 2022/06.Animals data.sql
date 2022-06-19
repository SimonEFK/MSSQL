SELECT 
a.Name,
t.AnimalType,
FORMAT(a.BirthDate,'dd.MM.yyy') AS BirthDate
FROM Animals as A
JOIN AnimalTypes AS t ON a.AnimalTypeId=t.Id
ORDER BY a.Name ASC