SELECT 
p.Name,
COUNT(j.Id) AS JourneysCount
FROM Planets AS p
 JOIN Spaceports AS s ON p.Id=s.PlanetId
 JOIN Journeys AS j ON j.DestinationSpaceportId = s.Id
GROUP BY p.Id,p.Name
ORDER BY JourneysCount DESC,p.Name ASC