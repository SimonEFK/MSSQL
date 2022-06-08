CREATE DATABASE Movies
USE Movies

CREATE TABLE Directors
(
 Id INT PRIMARY KEY IDENTITY(1,1),
 DirectorName VARCHAR(50) NOT NULL,
 Notes VARCHAR(MAX) NULL
)
--DROP TABLE Directors
INSERT INTO Directors(DirectorName,Notes)
VALUES
('George Lucas',NULL),
('Joss Whedon',NULL),
('Ryan Coogler',NULL),
('Joe Russo',NULL),
('Anthony Russo',NULL)

CREATE TABLE Genres 
(
 Id INT PRIMARY KEY IDENTITY(1,1),
 GenreName VARCHAR(50) NOT NULL,
 Notes VARCHAR(MAX)
)
--DROP TABLE Genres
INSERT INTO Genres(GenreName,Notes)
VALUES
('Action', NULL),
('Comedy',NULL),
('Drama',NULL),
('Fantasy',NULL),
('Horror',NULL)

CREATE TABLE Categories  
(
 Id INT  PRIMARY KEY IDENTITY(1,1),
 CategoryName VARCHAR(50) NOT NULL,
 Notes VARCHAR(MAX)
)
--DROP TABLE Categories
INSERT INTO Categories(CategoryName,Notes)
VALUES
('Action',NULL),
('Comedy',NULL),
('Drama',NULL),
('Fantasy',NULL),
('Horror',NULL)

CREATE TABLE Movies   
(
 Id INT  PRIMARY KEY IDENTITY(1,1),
 Title VARCHAR(50) NOT NULL,
 Directorid INT NOT NULL,
 CopyrightYear DATETIME2 NOT NULL,
 [Length] INT  NOT NULL,
 Genreid INT NOT NULL,
 Categoryid INT NOT NULL,
 Rating DECIMAL(5,2) NULL,
 Notes VARCHAR(MAX) NULL
)
INSERT INTO Movies(Title,Directorid,CopyrightYear,[Length],Genreid,Categoryid,Rating,Notes)
VALUES
('Raiders of the Lost Ark', 1 , '1981' , 115 , 1 , 1 , 5.5 ,NULL),
('Star Wars',1,'1977',121,1,1,5.5,NULL),
('Kagemusha',1,'1980',	180,1,1,5.5,NULL),
('The Empire Strikes Back',1,'1980',124,1,1,5.5,NULL),
('Howard the Duck',1,'1986',111,1,1,5.5,NULL)