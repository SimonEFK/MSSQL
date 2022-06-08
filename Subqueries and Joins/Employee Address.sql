SELECT TOP(5) 
 e.EmployeeID AS EmployeeId,
 e.JobTitle AS JobTitle,
 e.AddressID AS AddressId,
a.AddressText AS AddressText
FROM Employees AS e
JOIN Addresses AS a ON e.AddressID = a.AddressID
ORDER BY a.AddressID ASC