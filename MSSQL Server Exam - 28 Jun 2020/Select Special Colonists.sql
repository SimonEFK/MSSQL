SELECT 
k.JobDuringJourney,
k.FullName,
k.ranked
FROM (SELECT 
CONCAT(c.FirstName,' ',c.LastName) AS [FullName],
tc.JobDuringJourney,
c.BirthDate,
DENSE_RANK() OVER(PARTITION BY tc.JobDuringJourney ORDER BY c.Birthdate ) AS ranked
FROM TravelCards AS tc
LEFT JOIN Colonists AS c ON tc.ColonistId=c.Id
LEFT JOIN Journeys AS j ON j.Id = tc.JourneyId) AS k
WHERE k.ranked = 2