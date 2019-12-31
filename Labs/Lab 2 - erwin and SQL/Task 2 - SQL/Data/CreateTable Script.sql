CREATE TABLE Department(
	DepartmentID int PRIMARY KEY,
	Name varchar(50) NOT NULL,
	GroupName varchar(50)
)

CREATE TABLE Employee(
	EmployeeID int PRIMARY KEY,
	Name varchar(50) NOT NULL,
	NationalIDNumber varchar(70) NOT NULL,
	ContactID varchar(70) NOT NULL,
	ManagerID varchar(70) NOT NULL,
	Title varchar(100) NOT NULL,
	BirthDate datetime NOT NULL,
	MartialStatus varchar(20),
	Gender varchar(10) NOT NULL,
)

CREATE TABLE EmployeeAddress(
	EmployeeID int NOT NULL,
	AddressID varchar(70) NOT NULL,
	AddressLine1 varchar(70),
	AddressLine2 varchar(70),
	City varchar(70) NOT NULL,
	StateProvinceID varchar(50),
	PostalCode int,
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
)

CREATE TABLE EmployeeDepartmentHistory(
	EmployeeID int NOT NULL,
	DepartmentID int NOT NULL,
	ShiftID varchar(50),
	StartDate datetime,
	EndDate datetime,
	ModifiedDate datetime,
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
	FOREIGN KEY (DepartmentID) REFERENCES Department(DepartmentID),
)

CREATE TABLE EmployeePayHistory(
	EmployeeID int NOT NULL,
	RateChangeDate datetime,
	Rate float,
	PayFrequency float,
	ModifiedDate datetime,
	HoursPerDay float,
	DaysPerWeek float,
	FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
)

CREATE TABLE Project(
	ProjectID int PRIMARY KEY,
	Name varchar(100) NOT NULL,
	StartDate datetime,
	EndDate datetime,
Description varchar(50),
	DeptID int NOT NULL,
	FOREIGN KEY (DeptID) REFERENCES Department(DepartmentID),
)