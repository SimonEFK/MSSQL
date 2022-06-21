SELECT 
j.JobId,
ISNULL(SUM(op.Quantity*p.Price),0) AS Total
FROM Jobs AS j
LEFT JOIN Orders AS o ON j.JobId=o.JobId
LEFT JOIN OrderParts AS op ON o.OrderId=op.OrderId
LEFT JOIN Parts AS p ON p.PartId = op.PartId
WHERE J.Status='Finished' 
GROUP BY j.JobId
ORDER BY Total DESC,J.JobId ASC