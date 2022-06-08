CREATE  PROCEDURE usp_DeleteEmployeesFromDepartment (@departmentId INT)
AS
BEGIN


DELETE FROM [EmployeesProjects]
WHERE [EmployeesProjects].EmployeeID IN (SELECT [EmployeeID]								                           FROM [Employees]
									     WHERE  Employees.DepartmentID=@departmentId)


UPDATE Employees
SET ManagerID = NULL
WHERE ManagerID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID = @departmentId)
 
 ALTER TABLE Departments
 ALTER COLUMN ManagerID INT NULL

UPDATE Departments
SET ManagerID = NULL
WHERE ManagerID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID=@departmentId)

DELETE FROM Employees
WHERE EmployeeID IN (SELECT EmployeeID FROM Employees WHERE DepartmentID=@departmentId)

DELETE FROM Departments
WHERE DepartmentID = @departmentId

SELECT COUNT(*) FROM Employees WHERE DepartmentID = @departmentId

END