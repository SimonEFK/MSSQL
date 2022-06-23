CREATE PROCEDURE usp_SearchForFiles(@fileExtension VARCHAR(50))
AS
BEGIN
SELECT
f.Id,
f.Name,
CONCAT(CAST(f.Size AS VARCHAR),'KB') AS Size
FROM Files f
WHERE f.Name LIKE CONCAT('%',@fileExtension,'%')
ORDER BY f.Id ASC,f.Name ASC,f.Size DESC
END