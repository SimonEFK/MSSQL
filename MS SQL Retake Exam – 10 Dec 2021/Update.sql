UPDATE Aircraft
SET Condition = 'A'
WHERE Aircraft.Condition IN('C','B') AND (Aircraft.FlightHours IS NULL OR Aircraft.FlightHours BETWEEN 0 AND 100) AND Aircraft.[Year] >=2013