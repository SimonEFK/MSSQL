CREATE TABLE Employees
(
Id INT PRIMARY KEY IDENTITY(1,1),
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
Title VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO Employees(FirstName,LastName,Title,Notes)
VALUES
('Ime','familiata','Manager',NULL),
('Ime1','familiata1','Waiter',NULL),
('Ime2','familiata2','Cleaner',NULL)
CREATE TABLE Customers
(
AccountNumber VARCHAR(20) PRIMARY KEY,
FirstName VARCHAR(30) NOT NULL,
LastName VARCHAR(30) NOT NULL,
PhoneNumber VARCHAR(10) NOT NULL,
EmergencyName VARCHAR(30) NOT NULL,
EmergencyNumber VARCHAR(10) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO Customers(AccountNumber, FirstName, LastName, PhoneNumber, EmergencyName, EmergencyNumber, Notes)
VALUES
('1356789','Customer0','CustamerF0','08823143','EmName0','023213432',NULL),
('135689','Customer1','CustamerF1','08983143','EmName1','082213432',NULL),
('136789','Customer2','CustamerF2','089823143','EmName2','082321332',NULL)
CREATE TABLE RoomStatus
(
RoomStatus VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO RoomStatus(RoomStatus)
VALUES
('EMPTY'),
('OCCUPIED'),
('IN MAITANANCE')

CREATE TABLE RoomTypes
(
 RoomType VARCHAR(20) NOT NULL,
 Notes VARCHAR(MAX) NULL
)
INSERT INTO RoomTypes(RoomType)
VALUES
('PRESIDENT ROOM'),
('TRASH ROOM'),
('2 Bed Room')

--BedTypes (BedType, Notes)
CREATE TABLE BedTypes
(
BedType VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO BedTypes(BedType)
VALUES
('VERY BIG'),
('BIG'),
('SMALL')

CREATE TABLE Rooms
(
RoomNumber INT PRIMARY KEY,
RoomType VARCHAR(20) NOT NULL,
BedType VARCHAR(20) NOT NULL,
Rate DECIMAL(15,2) NOT NULL,
RoomStatus VARCHAR(20) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO Rooms(RoomNumber, RoomType, BedType, Rate, RoomStatus, Notes)
VALUES
(100,'PRESIDENT ROOM','BIG',10.0,'EMPTY',NULL),
(101,'TRASH ROOM','SMALL',10.0,'EMPTY',NULL),
(102,'SMALL ROOM','VERY BIG',10.0,'EMPTY',NULL)

CREATE TABLE Payments
(
Id INT PRIMARY KEY IDENTITY(1,1),
EmployeeId INT NOT NULL,
PaymentDate DATETIME2 NOT NULL,
AccountNumber VARCHAR(20) NOT NULL,
FirstDateOccupied DATETIME2 NOT NULL,
LastDateOccupied DATETIME2 NOT NULL,
TotalDays INT NOT NULL,
AmountCharged DECIMAL(15,2) NOT NULL,
TaxRate DECIMAL(15,2) NOT NULL,
TaxAmount DECIMAL (15,2) NOT NULL,
PaymentTotal DECIMAL(15,2) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO Payments(EmployeeId, PaymentDate, AccountNumber, FirstDateOccupied, LastDateOccupied, TotalDays, AmountCharged, TaxRate, TaxAmount, PaymentTotal, Notes)
VALUES
(1,'2000-05-05','12324352','2000-05-01','2000-05-04',5,50000,10,5000,55000,NULL),
(2,'2000-05-05','1234352','2000-05-01','2000-05-04',5,60000,10,5000,65000,NULL),
(3,'2000-05-05','12354352','2000-05-01','2000-05-04',5,70000,10,5000,75000,NULL)

CREATE TABLE Occupancies
(
Id INT PRIMARY KEY IDENTITY(1,1),
EmployeeId INT NOT NULL,
DateOccupied DATETIME2 NOT NULL,
AccountNumber VARCHAR(20) NOT NULL,
RoomNumber INT NOT NULL,
RateApplied DECIMAL(15,2) NOT NULL,
PhoneCharge DECIMAL(15,2) NOT NULL,
Notes VARCHAR(MAX) NULL
)
INSERT INTO Occupancies(EmployeeId, DateOccupied, AccountNumber, RoomNumber, RateApplied, PhoneCharge, Notes)
VALUES 
(1,'2005-05-05','1234567',100,10,50,NULL),
(2,'2005-05-05','1234567',101,10,50,NULL),
(3,'2005-05-05','1234567',102,10,50,NULL)
