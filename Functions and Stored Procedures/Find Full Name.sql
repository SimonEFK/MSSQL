CREATE PROCEDURE usp_GetHoldersFullName
 AS
 BEGIN
 SELECT 
ah.FirstName +' '+ ah.LastName AS [Full Name]
FROM AccountHolders AS ah
 END


 EXECUTE usp_GetHoldersFullName