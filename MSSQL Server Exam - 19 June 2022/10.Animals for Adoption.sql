SELECT * FROM (SELECT 
a.Name,
DATEPART(YEAR,a.BirthDate) AS BirthYear,
(SELECT AnimalType FROM AnimalTypes WHERE AnimalTypes.Id=a.AnimalTypeId) as AnimalType
FROM Animals AS a
WHERE OwnerId IS NULL AND DATEDIFF(YEAR,a.BirthDate,'2022-01-01')<5) AS k
WHERE k.AnimalType NOT LIKE'Birds'
ORDER BY k.Name ASC