SELECT 
m.FirstName+' '+m.LastName AS [Available]
FROM Mechanics AS m
LEFT JOIN Jobs AS j ON m.MechanicId = j.MechanicId
WHERE j.JobId IS NULL or 'Finished' = ALL(Select j.Status from jobs as j where j.MechanicId=m.MechanicId)
GROUP BY m.MechanicId,m.FirstName,m.LastName
ORDER BY m.MechanicId , m.FirstName,m.LastName
