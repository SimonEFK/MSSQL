SELECT 
pn.PartId,
p.Description,
pn.Quantity,
p.StockQty,
IIF(o.Delivered = 0 ,op.Quantity,0) AS Ordered
FROM Parts AS p
left JOIN PartsNeeded AS pn ON pn.PartId=p.PartId
left JOIN OrderParts AS op ON op.PartId = pn.PartId
left JOIN Jobs AS j ON j.JobId=pn.JobId
left JOIN Orders AS o ON o.JobId=j.JobId
WHERE j.Status <>'Finished' AND p.StockQty+ IIF(o.Delivered = 0 ,op.Quantity,0)<pn.Quantity
ORDER BY pn.PartId ASC
