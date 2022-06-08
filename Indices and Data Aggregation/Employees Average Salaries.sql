SELECT 
e.DepartmentID,MAX(e.Salary) AS MaxSalary
FROM Employees AS e
WHERE e.Salary NOT BETWEEN 30000 AND 70000
GROUP BY e.DepartmentID