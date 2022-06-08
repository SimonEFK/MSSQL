
SELECT 
Employees.EmployeeID,Employees.FirstName,Employees.ManagerID,m.FirstName
From Employees
JOIN Employees AS m ON m.EmployeeID = Employees.ManagerID
WHERE Employees.ManagerID IN (3,7)
ORDER BY EmployeeID ASC