SELECT 
CASE
WHEN e.FirstName IS NULL OR e.LastName IS NULL THEN 'None'
Else CONCAT(e.FirstName,' ',e.LastName)
END AS Employee,
ISNULL(d.[Name],'None') AS Department,
ISNULL(c.[Name],'None') AS Category,
ISNULL(r.Description,'None') AS [Description],
ISNULL(FORMAT(r.OpenDate,'dd.MM.yyyy'),'None') AS OpenDate,
ISNULL(s.[Label],'None') AS [Status],
ISNULL(u.[Name],'None') AS [User]
FROM Reports AS r
LEFT JOIN Employees AS e ON r.EmployeeId=e.Id
LEFT JOIN Departments AS d ON d.Id=e.DepartmentId
LEFT JOIN Categories AS c on c.Id=r.CategoryId
LEFT JOIN Users AS u ON r.UserId=u.Id
LEFT JOIN Status AS s ON r.StatusId=s.Id
ORDER BY E.FirstName DESC,E.LastName DESC,d.Name,c.Name  ASC,r.Description ASC,r.OpenDate ASC,s.Label ASC,u.Name ASC