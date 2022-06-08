CREATE PROCEDURE usp_EmployeesBySalaryLevel (@input VARCHAR(30))
AS
BEGIN
SELECT 
e.FirstName,e.LastName
FROM Employees AS e
 WHERE dbo.ufn_GetSalaryLevel(e.Salary) = @input
 END
