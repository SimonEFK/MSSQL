SELECT 
[Name]
FROM Towns
WHERE LEN(Towns.Name) >=5 AND LEN(Towns.Name) <=6 
ORDER BY Towns.Name ASC
