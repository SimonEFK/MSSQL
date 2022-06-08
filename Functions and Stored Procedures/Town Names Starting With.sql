CREATE PROCEDURE usp_GetTownsStartingWith (@input VARCHAR(30))
AS
BEGIN
SELECT
Towns.Name
FROM Towns
WHERE Towns.Name LIKE @input+'%'
END