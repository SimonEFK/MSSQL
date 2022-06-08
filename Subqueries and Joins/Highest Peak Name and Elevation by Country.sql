SELECT TOP(5)
k.Country,k.[Highest Peak Name],k.[Highest Peak Elevation],k.Mountain
FROM
(SELECT 
c.CountryName AS Country,
ISNULL(p.PeakName,'(no highest peak)') AS [Highest Peak Name],
ISNULL(MAX(p.elevation),0) AS [Highest Peak Elevation],
ISNULL(m.MountainRange,'(no mountain)') AS [Mountain],
DENSE_RANK() OVER(PARTITION BY CountryName ORDER BY MAX(p.elevation) DESC) AS Ranked
FROM Countries AS c
LEFT JOIN MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
LEFT JOIN Mountains AS m ON mc.MountainId = m.Id
Left JOIN Peaks AS p ON m.Id = p.MountainId
GROUP BY c.CountryName, p.PeakName,p.Elevation,m.MountainRange)AS k
WHERE K.Ranked = 1
ORDER BY k.Country ASC
