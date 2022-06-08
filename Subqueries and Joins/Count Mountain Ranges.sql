SELECT 
c.CountryCode,COUNT(*)
FROM Countries AS c
JOIN MountainsCountries AS mc ON c.CountryCode = mc.CountryCode
JOIN Mountains AS m ON mc.MountainId=m.Id
WHERE c.CountryCode IN ('US','BG','RU')
GROUP BY c.CountryCode
