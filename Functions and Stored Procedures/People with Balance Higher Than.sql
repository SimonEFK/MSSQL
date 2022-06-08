CREATE PROCEDURE usp_GetHoldersWithBalanceHigherThan (@balance MONEY)
AS
BEGIN

SELECT 
k.FirstName,k.LastName
FROM 
(SELECT 
ah.FirstName,ah.LastName,SUM(ac.Balance) as SumOfHoldersAccountsBalance
FROM AccountHolders AS ah
JOIN Accounts AS ac ON ah.id=ac.AccountHolderId
GROUP BY ac.AccountHolderId,ah.FirstName,ah.LastName) AS k
WHERE SumOfHoldersAccountsBalance>=@balance
ORDER BY k.FirstName,k.LastName

END


