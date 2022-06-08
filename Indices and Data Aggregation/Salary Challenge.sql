SELECT TOP(10)
e.FirstName,e.LastName,e.DepartmentID
 FROM Employees AS e
 WHERE e.Salary>(SELECT 
	AVG(emp.Salary)
	FROM Employees AS emp
	tID=e.DepartmentID
GROUP BY emp.DepartmentID)

SELECT 
AVG(emp.Salary)
FROM Employees AS emp
GROUP BY emp.DepartmentID