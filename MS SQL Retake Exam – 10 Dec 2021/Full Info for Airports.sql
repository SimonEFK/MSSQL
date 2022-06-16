CREATE PROCEDURE usp_SearchByAirportName(@airportName VARCHAR(70))
AS
BEGIN
SELECT 
a.AirportName,
p.FullName,
CASE
WHEN fd.TicketPrice<=400 THEN 'Low'
WHEN fd.TicketPrice BETWEEN 401 AND 1500 THEN 'Medium'
ELSE 'High'
END AS LevelOfTickerPrice,
ar.Manufacturer,
ar.Condition,
[at].TypeName
FROM FlightDestinations fd
LEFT JOIN Airports AS a ON fd.AirportId=a.Id
LEFT JOIN Aircraft AS ar ON fd.AircraftId = ar.Id
LEFT JOIN AircraftTypes AS [at] on ar.TypeId= [at].Id
LEFT JOIN Passengers AS p ON p.Id=fd.PassengerId
WHERE a.AirportName = @airportName
ORDER BY ar.Manufacturer ASC,p.FullName ASC
END

EXEC usp_SearchByAirportName 'Sir Seretse Khama International Airport'
