--8
CREATE TABLE Users
(
Id INT IDENTITY(1,1) PRIMARY KEY,
[Name] VARCHAR(31) NOT NULL UNIQUE,
[Password] VARCHAR(27) NOT NULL,
ProfilePicture VARCHAR(MAX) NULL,
LastLoginTime DATETIME2 NULL,
isDeleted VARCHAR(6) NOT NULL
)

INSERT INTO Users([Name],[Password],ProfilePicture,LastLoginTime,isDeleted)
VALUES 
('Kevin','1234','https://softuni.bg/Content/images/open-graph/university-default-og.png',GETDATE(),'False'),
('Devin','1234567','https://softuni.bg/Content/images/open-graph/university-default-og.png',GETDATE(),'TRUE'),
('Pevin','1234568','https://softuni.bg/Content/images/open-graph/university-default-og.png',GETDATE(),'FALSE'),
('Drevin','1234569','https://softuni.bg/Content/images/open-graph/university-default-og.png',GETDATE(),'TRUE'),
('Stevin','12345610','https://softuni.bg/Content/images/open-graph/university-default-og.png',GETDATE(),'FALSE')

--9
ALTER TABLE Users
DROP PK_Id
--10
ALTER TABLE Users
ADD CONSTRAINT CHK_Password_Lenght CHECK (LEN([Password])>=5);
--11
ALTER TABLE Users
ADD CONSTRAINT DF_LastLoginTime
DEFAULT GETDATE() FOR LastLoginTime;
--12
ALTER TABLE Users
ADD CONSTRAINT UC_Name UNIQUE ([Name]);