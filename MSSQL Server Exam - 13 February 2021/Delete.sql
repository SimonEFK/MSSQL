ALTER TABLE Commits
ALTER COLUMN RepositoryId INT  NULL

UPDATE Commits
SET RepositoryId = NULL
WHERE Commits.RepositoryId=3

DELETE FROM RepositoriesContributors
WHERE RepositoriesContributors.RepositoryId = 3

DELETE FROM Issues
WHERE Issues.RepositoryId = 3

DELETE FROM Repositories
WHERE Repositories.Name = 'Softuni-Teamwork'