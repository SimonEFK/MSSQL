SELECT 
u.Username,
c.Name
FROM Reports  AS r
LEFT JOIN Users AS u ON r.UserId=u.Id
LEFT JOIN Categories AS c ON c.Id=r.CategoryId
WHERE (DATEPART(MM,r.OpenDate) = DATEPART(MM,u.Birthdate)) AND (DATEPART(DD,r.OpenDate) = DATEPART(DD,u.Birthdate))
ORDER BY u.Username ASC,c.Name ASC
