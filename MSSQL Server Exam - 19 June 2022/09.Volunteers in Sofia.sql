SELECT 
v.Name,
v.PhoneNumber,
TRIM(RIGHT(v.Address,LEN(v.Address)-CHARINDEX(',',v.Address))) AS Address
FROM Volunteers AS v
JOIN VolunteersDepartments AS vd ON v.DepartmentId=vd.Id
WHERE vd.DepartmentName = 'Education program assistant' AND v.Address LIKE '%Sofia%'
ORDER BY v.Name ASC


