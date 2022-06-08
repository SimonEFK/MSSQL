--USE Geography

SELECT * FROM Mountains
WHERE MountainRange = 'Rila'


Select
MountainRange ,Peaks.PeakName,Peaks.Elevation
FROM Mountains
JOIN Peaks ON Mountains.Id= Peaks.MountainId
WHERE MountainRange = 'Rila'
ORDER BY Peaks.Elevation DESC