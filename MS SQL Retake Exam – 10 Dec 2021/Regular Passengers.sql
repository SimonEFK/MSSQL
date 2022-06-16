SELECT 
(Select Passengers.FullName FROM Passengers WHERE Passengers.Id=k.Id) as FullName,

k.CountOfAircraft,
(SELECT SUM(TicketPrice) FROM FlightDestinations WHERE FlightDestinations.PassengerId=k.Id) AS TotalPayed
FROM 
(SELECT 
p.Id,
COUNT(FD.AircraftId) AS CountOfAircraft
FROM FlightDestinations AS fd
LEFT JOIN Passengers AS p ON fd.PassengerId = P.Id
WHERE SUBSTRING(p.FullName,2,1) LIKE 'a'
GROUP BY p.Id ,p.FullName
) AS k
WHERE k.CountOfAircraft >1
ORDER BY FullName


