CREATE FUNCTION udf_GetColonistsCount(@PlanetName VARCHAR (30))
RETURNS INT
AS
BEGIN

	RETURN(SELECT COUNT(c.Id) AS Count FROM Planets AS p 
	left JOIN Spaceports AS s on P.Id=S.PlanetId
	left JOIN Journeys AS j ON j.DestinationSpaceportId=s.Id
	left JOIN TravelCards AS tc ON tc.JourneyId = j.Id
	left JOIN Colonists AS c ON c.Id=tc.ColonistId
	WHERE p.Name =@PlanetName)
END

SELECT dbo.udf_GetColonistsCount('Otroyphus')
