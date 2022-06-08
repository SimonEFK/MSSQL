--CREATE DATABASE UniversityDatabase

CREATE TABLE Majors
(
MajorID INT PRIMARY KEY,
[Name] VARCHAR(40)
)
CREATE TABLE Students
(
StudentID INT PRIMARY KEY,
StudentNumber VARCHAR(30),
StudentName VARCHAR(50),
MajorID INT REFERENCES Majors(MajorID)
)

CREATE TABLE Payments
(
PaymentID INT PRIMARY KEY,
PaymentDate DATE,
PaymentAmount DECIMAL(15,2),
StudentID INT REFERENCES Students(StudentID)
)

CREATE TABLE Subjects
(
SubjectID INT PRIMARY KEY,
SubjectName VARCHAR(60)
)

CREATE TABLE Agenda
(
StudentID INT REFERENCES Students(StudentID),
SubjectID INT REFERENCES Subjects(SubjectID),

CONSTRAINT INT PRIMARY KEY (StudentID,SubjectID)
)
