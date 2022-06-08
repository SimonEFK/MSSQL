CREATE PROCEDURE usp_GetEmployeesFromTown (@Town VARCHAR(30))
AS
BEGIN
SELECT 
e.FirstName,e.LastName
FROM Employees AS e
JOIN Addresses AS a ON e.AddressID=a.AddressID
JOIN Towns AS t ON a.TownID=t.TownID
WHERE t.Name = @Town
END
