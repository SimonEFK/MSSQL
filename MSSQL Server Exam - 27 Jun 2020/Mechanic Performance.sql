
SELECT 
m.FirstName+' '+m.LastName AS Mechanic,
AVG(DATEDIFF(DAY,j.IssueDate,j.FinishDate)) AS [Average Days]
FROM Mechanics AS m
LEFT JOIN Jobs AS j on j.MechanicId= m.MechanicId
WHERE j.Status = 'Finished'
GROUP BY m.MechanicId ,m.FirstName,m.LastName
ORDER BY m.MechanicId