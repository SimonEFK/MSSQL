--CREATE DATABASE TableReletionsExcercise
--USE TableReletionsExcercise

CREATE TABLE Passports
(
PassportID INT PRIMARY KEY IDENTITY(101,1),
PassportNumber VARCHAR(10) NOT NULL
)

CREATE TABLE Persons
(
PersonID INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(50) NOT NULL,
Salary DECIMAL(15,2) NULL,
PassportID INT REFERENCES Passports(PassportID) UNIQUE
)				   
INSERT INTO Passports(PassportNumber)
VALUES 
('N34FG21B'),
('K65LO4R7'),
('ZE657QP2')
INSERT INTO Persons(FirstName,Salary,PassportID)
VALUES
('RobertoO',43300.00, 102),
('Tom', 56100.00, 103),
('Yana' , 60200.00, 101)

SELECT 
FirstName
FROM Persons
JOIN Passports ON PersonID = Passports.PassportID