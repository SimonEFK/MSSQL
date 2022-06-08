CREATE PROCEDURE usp_DepositMoney (@AccountId DECIMAL(15,4), @MoneyAmount DECIMAL(15,4)) 
AS
BEGIN TRANSACTION
DECLARE @aId INT = (SELECT TOP(1) Id FROM Accounts WHERE Accounts.Id=@AccountId)
DECLARE @money DECIMAL(15,4) = @MoneyAmount

IF (@aId IS NULL)
BEGIN
	ROLLBACK
	RAISERROR('Invalid Account ID',16,1)
	RETURN
END	


IF(@money<0)
BEGIN
	ROLLBACK
	THROW
	RAISERROR('Can''t transfer negative amount', 16,1)
	RETURN
END

UPDATE Accounts
SET Balance+=@money
WHERE accounts.Id = @aId

COMMIT
