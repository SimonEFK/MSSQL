SELECT 
f.Id,
f.Name,
CONCAT(CAST(f.Size AS VARCHAR),'KB') AS Size
FROM Files AS f
WHERE f.Id NOT IN (SELECT ParentId FROM Files WHERE Files.ParentId=f.Id )
ORDER BY f.Id ASC,f.Name ASC,f.Size DESC


