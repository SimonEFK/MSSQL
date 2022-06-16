SELECT TOP(20)
fd.Id AS [DestinationId],
fd.Start,
p.FullName,
a.AirportName,
fd.TicketPrice
FROM FlightDestinations AS fd
LEFT JOIN Passengers AS p ON fd.PassengerId=p.Id
LEFT JOIN Airports AS a on fd.AirportId=a.Id
WHERE DATEPART(DAY,fd.Start)%2=0
ORDER BY fd.TicketPrice DESC,a.AirportName ASC


SELECT * FROM 