CREATE PROCEDURE usp_AssignEmployeeToReport(@EmployeeId INT, @ReportId INT)
AS
BEGIN

DECLARE @eDepartmentId INT = (SELECT TOP(1) e.DepartmentId FROM Employees AS e
WHERE e.Id=@EmployeeId)

DECLARE @ReportCategoryId INT = (SELECT TOP(1) c.DepartmentId FROM Reports AS r
LEFT JOIN Categories AS c ON r.CategoryId=c.Id
WHERE r.Id=@ReportId)


IF(@eDepartmentId<>@ReportCategoryId)

	THROW 50000 , 'Employee doesn''t belong to the appropriate department!',1


UPDATE Reports
SET Reports.EmployeeId=@EmployeeId
WHERE Reports.Id=@ReportId

END

EXEC usp_AssignEmployeeToReport 30, 1
EXEC usp_AssignEmployeeToReport 17, 2