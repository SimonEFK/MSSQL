CREATE PROCEDURE usp_AssignProject(@emloyeeId INT, @projectID INT)
AS
BEGIN TRANSACTION

DECLARE @eId INT = (SELECT  TOP(1) EmployeeID FROM Employees WHERE Employees.EmployeeID=@emloyeeId)

DECLARE @pId INT = (SELECT  TOP(1) ProjectID  FROM Projects WHERE Projects.ProjectID=@projectID)

DECLARE @employeeProjectsCount INT = (SELECT TOP(1)
--CONCAT(e.FirstName,' ',e.LastName) AS FullName,
COUNT(ep.ProjectID) AS ProjectsCount
FROM Employees AS e
JOIN EmployeesProjects AS ep ON e.EmployeeID=ep.EmployeeID
GROUP BY e.EmployeeID,CONCAT(e.FirstName,' ',e.LastName)
HAVING e.EmployeeID=@eId)


IF(@eId IS NULL)
BEGIN
ROLLBACK
RAISERROR('Invalid EmployeeID',16,1)
RETURN
END

IF(@pId IS NULL)
BEGIN
ROLLBACK
RAISERROR('Invalid ProjectId',16,1)
RETURN
END

IF(@employeeProjectsCount >=3)
BEGIN
ROLLBACK
RAISERROR('The employee has too many projects!',16,1)
RETURN
END

INSERT INTO EmployeesProjects(EmployeeID,ProjectID)
VALUES
(@eId,@pId)


COMMIT