SELECT 
A.Manufacturer,
a.Model,
a.FlightHours,
a.Condition
FROM Aircraft AS a
ORDER BY a.FlightHours DESC