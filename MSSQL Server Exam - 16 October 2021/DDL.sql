CREATE DATABASE CigarShop
GO
USE CigarShop
GO
CREATE TABLE Sizes
(
Id INT PRIMARY KEY IDENTITY,
[Length] INT CHECK ([Length] BETWEEN 10 AND 25) NOT NULL,
RingRange DECIMAL(4,2) CHECK (RingRange BETWEEN 1.5 AND 7.5) NOT NULL
)
CREATE TABLE Tastes
(
	Id INT PRIMARY KEY IDENTITY,
	TasteType VARCHAR(20) NOT NULL,
	TasteStrength VARCHAR(15) NOT NULL,
	ImageURL NVARCHAR(100) NOT NULL
)
CREATE TABLE Brands
(
Id INT PRIMARY KEY IDENTITY,
BrandName VARCHAR(30) UNIQUE NOT NULL,
BrandDescription VARCHAR(MAX) NULL
)
CREATE TABLE Cigars
(
Id INT PRIMARY KEY IDENTITY,
CigarName VARCHAR(80) NOT NULL,
BrandId  INT REFERENCES Brands(Id),
TastId INT REFERENCES Tastes(Id),
SizeId INT  REFERENCES Sizes(Id),
PriceForSingleCigar MONEY NOT NULL,
ImageURL NVARCHAR(100) NOT NULL
--CONSTRAINT PK_Id_SizeId  PRIMARY KEY (Id,SizeId)
)
CREATE TABLE Addresses
(
Id INT PRIMARY KEY IDENTITY,
Town VARCHAR(30) NOT NULL,
Country NVARCHAR(30) NOT NULL,
Streat NVARCHAR(100) NOT NULL,
ZIP VARCHAR(20) NOT NULL
)
CREATE TABLE Clients
(
Id INT PRIMARY KEY IDENTITY,
FirstName NVARCHAR(30) NOT NULL,
LastName NVARCHAR(30) NOT NULL,
Email NVARCHAR(50) NOT NULL,
AddressId INT REFERENCES Addresses(Id) NOT NULL
)
CREATE TABLE ClientsCigars
(
ClientId INT REFERENCES Clients(Id) NOT NULL,
CigarId INT REFERENCES Cigars(Id) NOT NULL,
CONSTRAINT PK_CigarId_ClientId PRIMARY KEY (ClientId,CigarId)
)