SELECT 
a.AirportName,
fd.Start,
fd.TicketPrice,
p.FullName,
ar.Manufacturer,
ar.Model
FROM FlightDestinations AS fd
LEFT JOIN Airports AS a ON a.Id = fd.AirportId
LEFT JOIN Passengers AS p ON fd.PassengerId = p.Id
LEFT JOIN Aircraft AS ar ON fd.AircraftId=ar.Id
WHERE DATEPART(HH,fd.Start) BETWEEN 6 AND 20 AND FD.TicketPrice>2500
ORDER BY ar.Model ASC