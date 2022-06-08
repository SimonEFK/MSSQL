CREATE TABLE Students
(
StudentID INT PRIMARY KEY IDENTITY(1,1),
[Name] VARCHAR(30) NOT NULL
)

CREATE TABLE Exams
(
ExamID INT PRIMARY KEY IDENTITY(101,1),
[Name] VARCHAR(30) NOT NULL
)

CREATE TABLE StudentsExams
(
  StudentID INT REFERENCES Students(StudentId),
  ExamID INT REFERENCES Exams(ExamId)

  CONSTRAINT INT PRIMARY KEY (StudentID,ExamID)
)


INSERT INTO Students([Name])
VALUES
('Mila'),
('Toni'),
('Ron')

INSERT INTO Exams([Name])
VALUES
('SpringMVC'),
('Neo4j'),
('Oracle 11g')

INSERT INTO StudentsExams(StudentID,ExamID)
VALUES
(1,101),
(1,102),
(2,101),
(3,103),
(2,102),
(2,103)

