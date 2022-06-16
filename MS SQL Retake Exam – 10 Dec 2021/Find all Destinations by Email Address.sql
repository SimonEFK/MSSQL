CREATE FUNCTION udf_FlightDestinationsByEmail(@email VARCHAR(100))
RETURNS INT
AS
BEGIN
 RETURN(SELECT COUNT(*) FROM FlightDestinations AS fd
LEFT JOIN Passengers AS p ON FD.PassengerId=p.Id
WHERE p.Email = @email)
END


SELECT dbo.udf_FlightDestinationsByEmail ('PierretteDunmuir@gmail.com')
