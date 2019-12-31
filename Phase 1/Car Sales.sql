
CREATE TABLE Addresses
( 
	Address_Id           integer  NOT NULL ,
	Customer_Id          integer  NOT NULL ,
	Address_Line_1       varchar(20)  NOT NULL ,
	Address_Line_2       varchar(20)  NULL ,
	Address_Line_3       varchar(20)  NULL ,
	Address_Line_4       varchar(20)  NULL ,
	Town_City            varchar(20)  NULL ,
	State_Country_Province varchar(20)  NULL ,
	Country              varchar(20)  NULL ,
	Post_Zip_Country     varchar(20)  NULL ,
	Other_Address_Details varchar(20)  NULL 
)
go



ALTER TABLE Addresses
	ADD CONSTRAINT XPKAddresses PRIMARY KEY  CLUSTERED (Address_Id ASC)
go



CREATE TABLE Car_Features
( 
	Car_Feature_Id       integer  NOT NULL ,
	Car_Feature_Description varchar(20)  NULL 
)
go



ALTER TABLE Car_Features
	ADD CONSTRAINT XPKCar_Features PRIMARY KEY  CLUSTERED (Car_Feature_Id ASC)
go



CREATE TABLE Car_Manufacturer
( 
	Manufacturer_Shortname varchar(20)  NOT NULL ,
	Manufacturer_FullName varchar(20)  NULL ,
	Manufacturer_Other_Details varchar(20)  NULL 
)
go



ALTER TABLE Car_Manufacturer
	ADD CONSTRAINT XPKCar_Manufacturer PRIMARY KEY  CLUSTERED (Manufacturer_Shortname ASC)
go



CREATE TABLE Car_Models
( 
	Model_Code           integer  NOT NULL ,
	Model_Name           varchar(20)  NULL ,
	Manufacturer_code    integer  NOT NULL 
)
go



ALTER TABLE Car_Models
	ADD CONSTRAINT XPKCar_Models PRIMARY KEY  CLUSTERED (Model_Code ASC)
go



CREATE TABLE Cars_For_Sale
( 
	Car_for_sale_Id      integer  NOT NULL ,
	Manufacturer_Shortname varchar(20)  NULL ,
	Model_Code           integer  NOT NULL ,
	Other_Car_Details    varchar(20)  NULL ,
	Vehicle_Category_Code integer  NOT NULL ,
	Current_Mileage      integer  NULL ,
	Engine_Size          varchar(20)  NULL ,
	License_Number       varchar(20)  NOT NULL ,
	Asking_Price         varchar(20)  NOT NULL ,
	Date_Acquired        datetime  NOT NULL ,
	Registration_year    integer  NOT NULL 
)
go



ALTER TABLE Cars_For_Sale
	ADD CONSTRAINT XPKCars_For_Sale PRIMARY KEY  CLUSTERED (Car_for_sale_Id ASC)
go



CREATE TABLE Cars_Sold
( 
	Customer_Id          integer  NOT NULL ,
	Agreed_Price         integer  NULL ,
	Date_Sold            datetime  NULL ,
	Other_Details        varchar(20)  NULL ,
	Car_Sold_Id          integer  NOT NULL ,
	Car_for_sale_Id      integer  NOT NULL 
)
go



ALTER TABLE Cars_Sold
	ADD CONSTRAINT XPKCars_Sold PRIMARY KEY  CLUSTERED (Car_Sold_Id ASC)
go



CREATE TABLE Customer
( 
	Customer_Id          integer  NOT NULL ,
	Cell_Phone_Number    integer  NULL ,
	Email_Address        varchar(20)  NULL ,
	Other_Customer_Details varchar(20)  NULL 
)
go



ALTER TABLE Customer
	ADD CONSTRAINT XPKCustomer PRIMARY KEY  CLUSTERED (Customer_Id ASC)
go



CREATE TABLE Customer_Preferences
( 
	Customer_Preference_Id integer  NOT NULL ,
	Car_Feature_Id       integer  NOT NULL ,
	Customer_Id          integer  NOT NULL ,
	Customer_preference_Detail varchar(20)  NULL 
)
go



ALTER TABLE Customer_Preferences
	ADD CONSTRAINT XPKCustomer_Preferences PRIMARY KEY  CLUSTERED (Customer_Preference_Id ASC)
go



CREATE TABLE Features_On_Cars_For_Sale
( 
	Car_Feature_Id       integer  NOT NULL ,
	Car_for_sale_Id      integer  NOT NULL 
)
go



ALTER TABLE Features_On_Cars_For_Sale
	ADD CONSTRAINT XPKFeatures_On_Cars_For_Sale PRIMARY KEY  CLUSTERED (Car_Feature_Id ASC,Car_for_sale_Id ASC)
go



CREATE TABLE Vehicle_Categories
( 
	Vehicle_Category_Code integer  NOT NULL ,
	Vehicle_Category_Description varchar(20)  NULL 
)
go



ALTER TABLE Vehicle_Categories
	ADD CONSTRAINT XPKVehicle_Categories PRIMARY KEY  CLUSTERED (Vehicle_Category_Code ASC)
go




ALTER TABLE Addresses
	ADD CONSTRAINT R_2 FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id)
		
		
go




ALTER TABLE Cars_For_Sale
	ADD CONSTRAINT R_18 FOREIGN KEY (Manufacturer_Shortname) REFERENCES Car_Manufacturer(Manufacturer_Shortname)
		
		
go




ALTER TABLE Cars_For_Sale
	ADD CONSTRAINT R_19 FOREIGN KEY (Model_Code) REFERENCES Car_Models(Model_Code)
		
		
go




ALTER TABLE Cars_For_Sale
	ADD CONSTRAINT R_20 FOREIGN KEY (Vehicle_Category_Code) REFERENCES Vehicle_Categories(Vehicle_Category_Code)
		
		
go




ALTER TABLE Cars_Sold
	ADD CONSTRAINT R_8 FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id)
		
		
go




ALTER TABLE Cars_Sold
	ADD CONSTRAINT R_42 FOREIGN KEY (Car_for_sale_Id) REFERENCES Cars_For_Sale(Car_for_sale_Id)
		
		
go




ALTER TABLE Customer_Preferences
	ADD CONSTRAINT R_4 FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id)
		
		
go




ALTER TABLE Customer_Preferences
	ADD CONSTRAINT R_7 FOREIGN KEY (Car_Feature_Id) REFERENCES Car_Features(Car_Feature_Id)
		
		
go




ALTER TABLE Features_On_Cars_For_Sale
	ADD CONSTRAINT R_10 FOREIGN KEY (Car_Feature_Id) REFERENCES Car_Features(Car_Feature_Id)
		
		
go




ALTER TABLE Features_On_Cars_For_Sale
	ADD CONSTRAINT R_41 FOREIGN KEY (Car_for_sale_Id) REFERENCES Cars_For_Sale(Car_for_sale_Id)
		
		
go

