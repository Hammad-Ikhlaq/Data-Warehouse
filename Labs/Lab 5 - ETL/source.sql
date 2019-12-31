Create table Customer
(
CustomerID int primary key ,
FirstName varchar(50),
MiddleName varchar(50),
LastName varchar(50),
Gender varchar(20),
BloodGroup varchar(10),
Address varchar(50),
FathersName varchar(50),
Age int
)


Insert into Customer(CustomerID,FirstName,MiddleName,LastName,Gender,BloodGroup,address,FathersName,age)values
(1,'Muhammad',NULL,'Zunair','M','B+','703 canal view lahore','Muhammad Halim',22),
(2,'Hafiz','Muhammad','Hamza','M','A-','Johar Town lahore','Hamza Ahmed',23),
(3,'Maria',NULL,'Tariq','F','O+','Wapda town lahore','Tariq Ali',21),
(4,'Abubakar',NULL,'Chaudhary','M','AB+','Gulberg lahore','Abuzar chaudhary',30),
(5,'Ghayyur',NULL,'Ali','M','O-','Bahria town lahore','Ali Nawaaz',24),
(6,'Rida',NULL,'Ahmed','F','B-','Defence phase-2 Lahore','Ahmed Mukhtaar',22)

