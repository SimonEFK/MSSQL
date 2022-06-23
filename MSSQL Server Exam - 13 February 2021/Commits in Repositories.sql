SELECT top(5)
r.Id,
(Select Repositories.[Name] FROM Repositories WHERE Repositories.Id=r.Id) AS [Names], 
COUNT(c.Id) AS Commits
FROM Repositories AS r
LEFT JOIN Commits AS c ON c.RepositoryId=r.Id
LEFT JOIN RepositoriesContributors AS rc ON rc.RepositoryId=r.Id
GROUP BY r.Id
ORDER BY Commits DESC
