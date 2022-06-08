--CREATE TABLE NotificationEmails
--(Id INT PRIMARY KEY IDENTITY,
--Recipient INT REFERENCES Accounts(Id),
--[Subject] VARCHAR(50),
--Body VARCHAR(MAX)
--)

GO
CREATE TRIGGER trg_ForEmailNotifications ON Logs FOR INSERT
AS
DECLARE @accountId INT = (SELECT inserted.AccountId FROM inserted )
DECLARE @subjectText VARCHAR(50) = CONCAT('Balance change for account:',' ',@accountId)
DECLARE @date VARCHAR(50) = convert(varchar, getdate(), 0)
DECLARE @oldSUM INT = (SELECT TOP(1) inserted.OldSum FROM inserted)
DECLARE @newSUM INT = (SELECT TOP(1) inserted.NewSum FROM inserted)
DECLARE @bodyText VARCHAR(MAX) = CONCAT('ON',' ',@date,' your balance was changed from ',@oldSum,' to ',@newSum)


INSERT INTO NotificationEmails(Recipient,[Subject],Body)
VALUES
(@accountId,@subjectText,@bodyText)



--UPDATE Accounts
--SET Balance+=50
--WHERE Accounts.Id = 2
--
--SELECT * FROM Logs
--SELECT * FROM NotificationEmails
