CREATE FUNCTION udf_HoursToComplete(@StartDate DATETIME, @EndDate DATETIME)
RETURNS INT
AS
BEGIN 
DECLARE @BeginDate DATETIME = @StartDate
DECLARE @FinishDate DATETIME = @EndDate

IF(@BeginDate IS NULL OR @FinishDate IS NULL)
BEGIN
RETURN 0
END
RETURN DATEDIFF(HH,@BeginDate,@FinishDate)
END

SELECT dbo.udf_HoursToComplete(OpenDate, CloseDate) AS TotalHours
   FROM Reports






SELECT *,
DATEDIFF(HOUR,r.OpenDate,r.CloseDate) AS TotalHours
CASE
END
AS TotalHours
FROM Reports AS r