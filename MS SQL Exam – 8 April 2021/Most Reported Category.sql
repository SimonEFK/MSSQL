SELECT TOP(5)
Categories.[Name] AS [CategoryName],
COUNT(*) AS [ReportsNumber]
FROM Reports 
JOIN Categories  ON Categories.Id= Reports.CategoryId
GROUP BY Reports.CategoryId ,Categories.[Name]
ORDER BY [ReportsNumber] DESC,[CategoryName] ASC