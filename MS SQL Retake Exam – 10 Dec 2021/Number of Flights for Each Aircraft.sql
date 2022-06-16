SELECT 
	k.AircraftId,
	(SELECT Aircraft.Manufacturer FROM Aircraft WHERE Aircraft.Id=k.AircraftId) AS [Manufacturer],
	(SELECT Aircraft.FlightHours FROM Aircraft WHERE Aircraft.Id=k.AircraftId) AS FlightHours,
	K.FlightDestinationsCount,
	(SELECT ROUND(AVG(FlightDestinations.TicketPrice),2) FROM FlightDestinations WHERE FlightDestinations.AircraftId=k.AircraftId) AS FlightHours
FROM (SELECT 
fd.AircraftId,COUNT(*) AS [FlightDestinationsCount]
FROM FlightDestinations AS fd
JOIN Aircraft AS a ON FD.AircraftId = a.Id
GROUP BY fd.AircraftId
HAVING COUNT(*) >=2
) AS K
ORDER BY [FlightDestinationsCount] DESC,K.AircraftId
