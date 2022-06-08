SELECT 
e.DepartmentID
,SUM(Salary)
FROM Employees AS e
GROUP BY e.DepartmentID
ORDER BY e.DepartmentID ASC