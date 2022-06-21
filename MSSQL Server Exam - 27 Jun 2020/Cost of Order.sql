CREATE FUNCTION udf_GetCost(@ID INT)
RETURNS DECIMAL(18,2)
AS
BEGIN
RETURN(
SELECT 
ISNULL(SUM(op.Quantity*p.Price),0) AS Total
FROM Jobs AS j
LEFT JOIN Orders AS o ON j.JobId=o.JobId
LEFT JOIN OrderParts AS op ON o.OrderId=op.OrderId
LEFT JOIN Parts AS p ON p.PartId = op.PartId
WHERE J.Status='Finished' AND j.JobId = @ID
GROUP BY j.JobId)
END
--SELECT dbo.udf_GetCost(1)
