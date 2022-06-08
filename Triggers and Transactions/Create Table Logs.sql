--CREATE TABLE Logs
--(
--LogId INT Primary KEY IDENTITY NOT NULL,
--AccountId INT REFERENCES Accounts(Id) NOT NULL,
--OldSum DECIMAL(18,2) NOT NULL,
--NewSum DECIMAL(18,2) NOT NULL
--)
--GO
CREATE  TRIGGER  tr_LogForAccountsTransactions ON Accounts FOR UPDATE
AS
DECLARE @newSum DECIMAL(18,2) = (SELECT Balance FROM inserted)
DECLARE @oldSum DECIMAL(18,2) = (SELECT Balance FROM deleted)
DECLARE @accountId INT = (SELECT Id FROM inserted )
INSERT INTO Logs(AccountId,NewSum,OldSum)
VALUES
(@accountId,@newSum,@oldSum)


--UPDATE Accounts
--SET Balance+=10
--WHERE Accounts.Id = 1
--
--SELECT * FROM Logs AS l