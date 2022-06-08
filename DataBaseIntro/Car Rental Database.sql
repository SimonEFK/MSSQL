CREATE TABLE Categories
(
Id INT PRIMARY KEY IDENTITY(1,1),
CategoryName VARCHAR(50) NOT NULL,
DailyRate DECIMAL(15,2) NOT NULL,
WeeklyRate Decimal(15,2) NOT NULL,
MonthlyRate DECIMAL(15,2) NOT NULL,
WeekendRate Decimal(15,2) NOT NULL
)

INSERT INTO Categories(CategoryName,DailyRate,WeeklyRate,MonthlyRate,WeekendRate)
VALUES
('Hatchback',5.5,5.3,30.5,5.0),
('SUV',5.5,5.3,30.5,5.0),
('Crossover',5.5,5.3,30.5,5.0)

CREATE TABLE Cars
(
Id INT PRIMARY KEY IDENTITY(1,1),
PlateNumber VARCHAR(20) NOT NULL,
Manufacturer VARCHAR(20) NOT NULL,
Model VARCHAR(15) NOT NULL,
CarYear DATETIME2 NOT NULL,
CategoryId INT NOT NULL,
Doors INT NOT NULL,
Picture VARCHAR(MAX) NULL,
Condition VARCHAR(30) NOT NULL,
Available VARCHAR(10) NOT NULL
)
INSERT INTO Cars(PlateNumber, Manufacturer, Model, CarYear, CategoryId, Doors, Picture, Condition, Available)
VALUES
('CA1584XW','BMW','X5','2005-05-12',1,5,NULL,'Good','YES'),
('CA1324RW','AUDI','X5','2005-05-13',1,5,NULL,'BROKEN','NO'),
('CA1584XW','BMW','X6','2015-05-15',1,5,NULL,'LIKE NEW','YES')
CREATE TABLE Employees
(
Id INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Title VARCHAR(15) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO Employees(FirstName,LastName,Title,Notes)
VALUES
('Gosho','Goshev','Manager',NULL),
('Tosho','Toshev','Cleaner',NULL),
('Pesho','Ludia','Mechanic',NULL)
CREATE TABLE Customers
(
Id INT PRIMARY KEY IDENTITY(1,1),
DriverLicenceNumber VARCHAR(20) NOT NULL,
FullName VARCHAR(30) NOT NULL,
[Address] VARCHAR(150) NOT NULL,
City VARCHAR(20) NOT NULL,
ZIPCode VARCHAR(10) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO Customers(DriverLicenceNumber, FullName, [Address], City, ZIPCode, Notes)
VALUES
('55554321','Gosheto','Slatina 15','Sofia','12334',NULL),
('55554321','Tosheto','Lulin 25','Varna','12234',NULL),
('55554321','PEsheto','Hristo Botev 55','Plovdiv','1434',NULL)
CREATE TABLE RentalOrders
(
Id INT PRIMARY KEY IDENTITY(1,1),
EmployeeId INT NOT NULL,
CustomerId INT NOT NULL,
CarId INT NOT NULL,
TankLevel FLOAT NOT NULL,
TotalKilometrage FLOAT NOT NULL,
KilometrageEnd FLOAT NOT NULL,
KilometrageStart FLOAT NOT NULL,
StartDate DATETIME2 NOT NULL,
EndDate DATETIME2 NOT NULL,
TotalDays INT NOT NULL,
RateApplied DECIMAL(15,2) NOT NULL,
TaxRate DECIMAL(15,2) NOT NULL,
OrderStatus VARCHAR(10) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO RentalOrders(EmployeeId,CustomerId,CarId,TankLevel,KilometrageStart,KilometrageEnd,TotalKilometrage,StartDate,EndDate,TotalDays,RateApplied,TaxRate,OrderStatus,Notes)
VALUES
(1,1,1,500,100000,100500,500,'2005-05-23','2005-05-26',3,5.5,10,'Pending',NULL),
(2,2,2,600,100000,100600,600,'2005-05-24','2005-05-27',4,5.5,10,'Pending',NULL),
(3,3,3,700,100000,100700,700,'2005-05-25','2005-05-28',3,4.5,10,'Pending',NULL)
