SELECT  
s.Name,
s.Manufacturer
FROM TravelCards AS tc
JOIN Colonists AS c ON tc.ColonistId=c.Id
JOIN Journeys as j ON tc.JourneyId = j.Id
JOIN Spaceships AS s ON s.Id=j.SpaceshipId
WHERE tc.JobDuringJourney='Pilot' AND DATEDIFF(YEAR, c.BirthDate,'2019-01-01') <30
ORDER BY s.Name ASC