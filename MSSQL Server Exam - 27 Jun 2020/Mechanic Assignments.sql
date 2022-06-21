SELECT 
(m.FirstName +' '+ m.LastName) AS Mechanic,
j.Status AS Status,
j.IssueDate
FROM Mechanics AS m
JOIN Jobs AS j ON m.MechanicId= J.MechanicId
ORDER BY m.MechanicId ASC,j.IssueDate ASC , J.JobId ASC