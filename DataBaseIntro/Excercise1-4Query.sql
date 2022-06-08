CREATE DATABASE Minions
USE Minions

CREATE TABLE Minions
(
Id INT PRIMARY KEY,
[Name] VARCHAR(50) NOT NULL,
Age INT NULL
)

CREATE TABLE Towns
(
Id INT PRIMARY KEY,
[Name] VARCHAR(30) NOT NULL
)

ALTER TABLE Minions
ADD Townid INT REFERENCES Towns(Id)

INSERT INTO Towns(Id,[Name])
VALUES
(1,'Sofia'),
(2,'Plovdiv'),
(3,'Varna')

INSERT INTO Minions(Id,[Name],Age,Townid)
VALUES
(1,'Kevin',22,1),
(2,'Bob',15,3),
(3,'Steward',NULL ,2)
