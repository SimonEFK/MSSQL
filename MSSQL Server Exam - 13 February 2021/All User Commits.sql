CREATE FUNCTION udf_AllUserCommits(@username VARCHAR(50))
RETURNS INT
BEGIN

RETURN(SELECT COUNT(*) FROM Commits
WHERE Commits.ContributorId = (SELECT TOP(1) USERS.Id FROM Users WHERE users.Username=@username))
END

