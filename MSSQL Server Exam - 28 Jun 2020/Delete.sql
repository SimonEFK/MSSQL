SELECT TOP(3) * FROM Journeys AS j
ORDER BY J.JourneyStart DESC


DELETE  FROM TravelCards 
WHERE TravelCards.JourneyId IN (SELECT TOP(3) j.Id FROM Journeys AS j)

DELETE FROM Journeys
WHERE Journeys.Id IN (SELECT TOP(3) j.Id FROM Journeys AS j)