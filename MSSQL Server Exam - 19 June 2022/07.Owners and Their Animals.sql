SELECT TOP(5)
o.Name AS Owner,
COUNT(a.Id) AS CountOfAnimals
FROM Owners AS o
LEFT JOIN Animals AS a ON a.OwnerId=o.Id
GROUP BY o.Id,o.Name
ORDER BY CountOfAnimals DESC,o.Name ASC