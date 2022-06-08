CREATE VIEW V_EmployeeNameJobTitle AS
Select
FirstName + ' ' + ISNULL(MiddleName,'')+' '+LastName AS [Full Name],JobTitle
 FROM Employees