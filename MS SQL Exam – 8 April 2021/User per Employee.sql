SELECT 
CONCAT(e.FirstName,' ',e.LastName) AS FullName,
COUNT(DISTINCT r.UserId) AS UsersCount
FROM Reports AS r
RIGHT JOIN Employees AS e ON e.Id=r.EmployeeId
GROUP BY r.EmployeeId , E.FirstName,E.LastName
ORDER BY UsersCount DESC,FullName ASC