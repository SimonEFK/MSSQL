Select 
c.CountryCode,m.MountainRange,p.PeakName,p.Elevation
FROM Countries AS c
LEFT JOIN  MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
LEFT JOIN Mountains AS m ON mc.MountainId = m.Id
LEFT JOIN Peaks AS p ON m.Id = p.MountainId
WHERE c.CountryCode = 'BG' AND P.Elevation>2835
ORDER BY p.Elevation DESC