SELECT * FROM Journeys
WHERE Id=4


CREATE  PROCEDURE usp_ChangeJourneyPurpose(@JourneyId INT,@NewPurpose VARCHAR(50))
AS
BEGIN

DECLARE @jId INT = (SELECT TOP(1) Journeys.Id FROM Journeys WHERE Journeys.Id=@JourneyId)

DECLARE @Purpose VARCHAR(50) = (SELECT TOP(1) Journeys.Purpose FROM Journeys WHERE Journeys.Id = @jId)

IF(@jId IS NULL)

	THROW 50000 ,'The journey does not exist!',1

IF(@Purpose = @NewPurpose )

	THROW 50001,'You cannot change the purpose!',1


UPDATE Journeys
SET Purpose = @NewPurpose
WHERE Journeys.Id = @jId
END


EXEC usp_ChangeJourneyPurpose 4, 'Technical'
EXEC usp_ChangeJourneyPurpose 2, 'Educational'
EXEC usp_ChangeJourneyPurpose 196, 'Technical'