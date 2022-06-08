SELECT * FROM Employees

SELECT FirstName
       ,LastName
       ,SUBSTRING(Firstname,1,3)
FROM Employees
WHERE LEFT(FirstName,2) LIKE 'Sa%'
