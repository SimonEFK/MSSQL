SELECT 
	Id,
	Message,
	RepositoryId,
	ContributorId
 FROM Commits
 ORDER BY Commits.Id ASC,
	     Commits.Message ASC,
		 Commits.RepositoryId ASC,
		 Commits.ContributorId ASC