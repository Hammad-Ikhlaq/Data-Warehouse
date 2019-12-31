-- CubePartitionData --
-- Script to prepare test data for Sales Cube

-------------------------------------------------
IF OBJECT_ID('dbo.DimProduct') IS NOT NULL
DROP TABLE DimProduct
GO 
CREATE TABLE DimProduct
(
	ProductKey smallint IDENTITY(1,1) Primary key
	,ProductName varchar(100) NOT NULL
	,Cost decimal(10,2) NOT NULL
	,Color varchar(20) NULL
	,Class char(1) NULL
)
GO
IF OBJECT_ID('dbo.DimCustomer') IS NOT NULL
DROP TABLE DimCustomer
GO 
CREATE TABLE DimCustomer
(
	CustomerKey smallint IDENTITY(1,1) primary key
	,CustomerName varchar(50) NOT NULL
	,MaritalStatus char(1) NULL
	,Gender varchar(1) NULL
	,AddressLine1 varchar(100) NULL
	,AddressLine2 varchar(100) NULL
	,Phone varchar(20) NULL
)
GO
IF OBJECT_ID('dbo.DimDate') IS NOT NULL
DROP TABLE DimDate
GO 
CREATE TABLE DimDate
(
	DateKey int NOT NULL primary key
	,CalendarYear smallint NOT NULL
	,CalendarQuarter tinyint NOT NULL
	,CalendarMonth tinyint NOT NULL
	,MonthName varchar(15) NOT NULL
	,FullDate datetime
)
GO

DECLARE @i int 
SET @i = 1
WHILE @i <= 10
BEGIN
	INSERT DimProduct
	SELECT 
		'ProductName' + CAST(@i as varchar)
		,RAND(@i%3*1000)*1000
		,CASE	WHEN @i%3 = 0 THEN 'Black'
				WHEN @i%3 = 1 THEN 'White'
				ELSE 'Silver'
		END Color
		,CASE	WHEN @i%3 = 0 THEN 'S'
				WHEN @i%3 = 1 THEN 'M'
				ELSE 'L'
		END Class		
		
		
		INSERT DimCustomer 
		SELECT 
		'CustomerName' + CAST(@i as varchar)
		,CASE	WHEN @i%2 = 0 THEN 'Y'
				WHEN @i%2 = 1 THEN 'N'
		END MaritalStatus
		,CASE	WHEN @i%2 = 0 THEN 'F'
				WHEN @i%2 = 1 THEN 'M'
		END Gender
		,'AddressLine' + CAST(@i as varchar) AddressLine1	
		,NULL AddressLine2
		,NULL Phone
	SET @i = @i + 1
END
GO

DECLARE @StartDate datetime 
SET @StartDate = '2016-01-01'
WHILE @StartDate <= '2016-12-31'
BEGIN
	INSERT DimDate 
	SELECT
	CONVERT(varchar(8),@StartDate,112) DateKey 
	,Year(@StartDate) CalendarYear 
	,DateName(QQ,@StartDate) CalendarQuarter 
	,Month(@StartDate) CalendarMonth 
	,DateName(MM,@StartDate) MonthName 
	,@StartDate FullDate
	
	SET @StartDate = @StartDate + 1
END
GO

--SELECT * FROM DimProduct
--SELECT * FROM DimCustomer 
--SELECT * FROM DimDate


IF OBJECT_ID('dbo.FactSales') IS NOT NULL
DROP TABLE FactSales
GO 
CREATE TABLE FactSales
(
	DateKey int NOT NULL
	,ProductKey smallint
	,CustomerKey smallint
	,SalesAmount decimal(10,2)
)
GO
AlTER TABLE FactSales ADD CONSTRAINT FK_DateKey FOREIGN KEY (DateKey)REFERENCES DimDate(DateKey);
AlTER TABLE FactSales ADD CONSTRAINT FK_ProductKey FOREIGN KEY (ProductKey)REFERENCES DimProduct(ProductKey);
AlTER TABLE FactSales ADD CONSTRAINT FK_CustomerKey FOREIGN KEY (CustomerKey)REFERENCES DimCustomer(CustomerKey);
go
INSERT INTO FactSales
SELECT D.DateKey,P.ProductKey,ISNULL(C.CustomerKey+2,P.ProductKey),P.Cost 
FROM DimProduct P
LEFT JOIN DimCustomer C
ON P.ProductKey-2 = C.CustomerKey+2
CROSS JOIN DimDate D
GO

--SELECT * FROM FactSales


------------------------------------------------------------------------------
-- Create PartitionLog table to log the Partition informations
-- EXECUTE below Script once you have processed the First Partition 
-- as mentioned in STEP 5 of my article
------------------------------------------------------------------------------

CREATE TABLE PartitionLog
(
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PartitionName] [varchar](30) NOT NULL,
	[FromDateKey] [int] NOT NULL,
	[ToDateKey] [int] NOT NULL,
	[CreatedDate] [datetime],
	[LastProcessDate] [datetime],
	[ProcessedCount] [smallint] DEFAULT 0,
	CONSTRAINT PK_PartitionLog PRIMARY KEY 
	(PartitionName,FromDateKey,ToDateKey)
) 
GO
-- INSERT Default Partition Info - Existing partition(s)
INSERT INTO dbo.PartitionLog  
(
	[PartitionName],
	[FromDateKey],
	[ToDateKey],
	[CreatedDate],
	[ProcessedCount]
) VALUES
(
	'Sales_20100101-20100131',
	20100101,
	20100131
	,GETDATE() -- Use partition Date when 1st Partition created
	,1 --Assuming that first partition is processed 1 time
) 
GO