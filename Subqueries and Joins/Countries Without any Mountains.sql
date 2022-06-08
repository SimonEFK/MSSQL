SELECT
--* 
COUNT(*)
FROM Countries AS e
LEFT JOIN MountainsCountries AS mc ON e.CountryCode = mc.CountryCode
LEFT JOIN Mountains AS m ON mc.MountainId = m.Id
WHERE m.Id IS NULL
