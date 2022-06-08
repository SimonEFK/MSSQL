CREATE FUNCTION ufn_CashInUsersGames(@gameName VARCHAR(30))
RETURNS TABLE
AS
RETURN(SELECT 
SUM(k.Cash) AS SumCash
FROM
(SELECT 
	g.Name,
	ug.Cash,
	ROW_NUMBER() OVER(ORDER BY ug.Cash DESC) AS RowNumber
	FROM Games AS g
	JOIN UsersGames AS ug ON ug.GameId=g.Id
	WHERE g.Name = @gameName) AS k
	WHERE k.RowNumber%2=1) 

SELECT * FROM dbo.ufn_CashInUsersGames ('Love in a mist')


