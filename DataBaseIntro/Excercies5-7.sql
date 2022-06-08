TRUNCATE TABLE Minions

DROP TABLE Minions
DROP TABLE Towns

CREATE TABLE People
(
  Id INT IDENTITY(1,1) PRIMARY KEY,
  [Name] NVARCHAR(200) NOT NULL,
  Picture VARBINARY(MAX) NULL,
  Height DECIMAL(5,2) NULL,
  [Weight] DECIMAL(5,2) NULL,
  Gender VARCHAR(3) NULL,
  Birthdate DATETIME NULL,
  Biography NVARCHAR(MAX) NULL
)

INSERT INTO People([Name],Picture,Height,[Weight],Gender,Birthdate,Biography)
VALUES
('Kevin',NULL,1.90,200,'m','2001-08-12',NULL),
('Devin',NULL,1.85,180,'m','2001-06-12',NULL),
('Daisy',NULL,1.50,130,'f','2001-07-12',NULL),
('Bobby',NULL,1.56,140,'f','2001-08-12',NULL),
('Any',NULL,1.55,120,'f','2001-09-12',NULL)
SELECT * FROM People