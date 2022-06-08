SELECT DISTINCT k.DepartmentID, k.Salary AS ThirdHighestSalary
FROM (SELECT 
e.DepartmentID
,Salary
,DENSE_RANK() OVER(PARTITION BY DepartmentID ORDER BY Salary DESC) AS ranked
FROM Employees AS e
) AS k
WHERE k.ranked =3
