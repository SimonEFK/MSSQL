CREATE PROCEDURE usp_TransferMoney(@SenderId INT, @ReceiverId INT , @Amount DECIMAL(15,4))
AS
BEGIN TRANSACTION
EXEC usp_WithdrawMoney @SenderId,@Amount
EXEC usp_DepositMoney @ReceiverId,@Amount
COMMIT