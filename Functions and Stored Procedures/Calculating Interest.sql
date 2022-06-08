CREATE PROCEDURE usp_CalculateFutureValueForAccount (@accountID INT,@intrest FLOAT)
AS
BEGIN

SELECT
ah.Id AS [Account Id],
ah.FirstName,
ah.LastName,
ac.Balance AS [Current Balance],
dbo.ufn_CalculateFutureValue(ac.Balance,@intrest,5) AS [Balance in 5 years]
FROM AccountHolders AS ah
JOIN Accounts AS ac ON ah.Id=ac.AccountHolderId
WHERE ac.Id=@accountID

END

--EXECUTE dbo.usp_CalculateFutureValueForAccount 1,0.1