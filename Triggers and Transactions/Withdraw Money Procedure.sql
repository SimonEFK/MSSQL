CREATE PROCEDURE usp_WithdrawMoney (@AccountId INT, @MoneyAmount DECIMAL(15,4))
AS
BEGIN TRANSACTION

DECLARE @aId INT = (SELECT TOP(1) Id FROM Accounts WHERE Accounts.Id=@AccountId)
DECLARE @balanceAfterWithdraw DECIMAL(15,4) = (SELECT Balance -@MoneyAmount FROM Accounts WHERE Accounts.Id=@aId)

IF (@aId IS NULL)
BEGIN
	ROLLBACK
	RAISERROR('Invalid Account ID',16,1)
	RETURN
END	

IF(@balanceAfterWithdraw<0)
BEGIN
ROLLBACK
RAISERROR('Balance not enough to complete transaction',16,1)
RETURN
END

UPDATE Accounts
SET Balance-=@MoneyAmount
WHERE ACCOUNTS.Id=@aId

COMMIT