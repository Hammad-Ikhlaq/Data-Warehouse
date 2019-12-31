Create table DimOrder
(
OrderId int,
LineId int,
OrderDate varchar(50),
Salesman varchar(50),
Customer varchar(50),
ItemName varchar(50),
Quantity int,
Amount int
)

Create table DimCustomer
(
CustomerID int primary key ,
CustomerName varchar(50),
Gender varchar(20),
address varchar(50),
Age int
)