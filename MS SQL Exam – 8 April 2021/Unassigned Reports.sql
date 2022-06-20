SELECT
Description,
FORMAT(OpenDate,'dd-MM-yyyy')
FROM Reports
WHERE Reports.EmployeeId IS NULL
ORDER BY OpenDate ASC,Description ASC