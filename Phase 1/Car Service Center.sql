
CREATE TABLE Car_Manufacturer
( 
	Car_Manufacturer_Code integer  NOT NULL ,
	Manufacturer_name    varchar(20)  NULL ,
	Manufacturer_Details varchar(20)  NULL 
)
go



ALTER TABLE Car_Manufacturer
	ADD CONSTRAINT XPKCar_Manufacturer PRIMARY KEY  CLUSTERED (Car_Manufacturer_Code ASC)
go



CREATE TABLE Car_Models
( 
	Model_Code           integer  NOT NULL ,
	Car_Manufacturer_Code integer  NOT NULL ,
	Model_Name           varchar(20)  NULL ,
	Other_Details        varchar(20)  NULL 
)
go



ALTER TABLE Car_Models
	ADD CONSTRAINT XPKCar_Models PRIMARY KEY  CLUSTERED (Model_Code ASC)
go



CREATE TABLE Cars
( 
	License_number       varchar(20)  NOT NULL ,
	Car_Year_of_Manufacture integer  NULL ,
	Model_Code           integer  NOT NULL ,
	Other_Car_Details    varchar(20)  NULL ,
	Current_Mileage      integer  NULL ,
	Engine_Size          integer  NULL ,
	Customer_Id          integer  NULL 
)
go



ALTER TABLE Cars
	ADD CONSTRAINT XPKCars PRIMARY KEY  CLUSTERED (License_number ASC)
go



CREATE TABLE Contacts
( 
	Contact_Id           integer  NOT NULL ,
	First_Name           varchar(20)  NOT NULL ,
	Middle_Name          varchar(20)  NULL ,
	Last_Name            varchar(20)  NOT NULL ,
	Gender               varchar(1)  NULL ,
	Email_Address        varchar(20)  NOT NULL ,
	Phone_Number         varchar(20)  NOT NULL ,
	Address_Line_1       varchar(20)  NOT NULL ,
	Address_Line_2       varchar(20)  NULL ,
	Address_Line_3       varchar(20)  NULL ,
	Address_Line_4       varchar(20)  NULL ,
	Town_City            varchar(20)  NULL ,
	State_Country_Province varchar(20)  NOT NULL ,
	Country              varchar(20)  NOT NULL ,
	Other_Details        varchar(20)  NULL 
)
go



ALTER TABLE Contacts
	ADD CONSTRAINT XPKContacts PRIMARY KEY  CLUSTERED (Contact_Id ASC)
go



CREATE TABLE Defects
( 
	Defect_Id            integer  NOT NULL ,
	License_number       varchar(20)  NOT NULL ,
	Defect_Description   varchar(20)  NULL ,
	Car_Defect_Reported  varchar(20)  NULL ,
	Other_Details        varchar(20)  NULL 
)
go



ALTER TABLE Defects
	ADD CONSTRAINT XPKDefects PRIMARY KEY  CLUSTERED (Defect_Id ASC)
go



CREATE TABLE Mechanic_on_Services
( 
	Mechanic_Id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL 
)
go



ALTER TABLE Mechanic_on_Services
	ADD CONSTRAINT XPKMechanic_on_Services PRIMARY KEY  CLUSTERED (Mechanic_Id ASC,Booking_Id ASC)
go



CREATE TABLE Mechanics
( 
	Mechanic_Id          integer  NOT NULL ,
	Mechanic_Name        varchar(20)  NULL ,
	Mechanic_Details     varchar(20)  NULL 
)
go



ALTER TABLE Mechanics
	ADD CONSTRAINT XPKMechanics PRIMARY KEY  CLUSTERED (Mechanic_Id ASC)
go



CREATE TABLE Parts
( 
	Part_Id              integer  NOT NULL ,
	Part_Name            varchar(20)  NOT NULL ,
	Part_Description     varchar(20)  NULL ,
	Number_in_Stock      integer  NULL ,
	Other_Details        varchar(20)  NULL ,
	Parent_Part_id       integer  NULL ,
	#Weight               varchar(20)  NULL ,
	Condition            varchar(20)  NULL ,
	Mileage_Donor_Vehicle varchar(20)  NULL 
)
go



ALTER TABLE Parts
	ADD CONSTRAINT XPKParts PRIMARY KEY  CLUSTERED (Part_Id ASC)
go



CREATE TABLE Parts_Order_List
( 
	Booking_Id           integer  NOT NULL ,
	Part_Id              integer  NOT NULL 
)
go



ALTER TABLE Parts_Order_List
	ADD CONSTRAINT XPKParts_Order_List PRIMARY KEY  CLUSTERED (Booking_Id ASC,Part_Id ASC)
go



CREATE TABLE Service_Bookings
( 
	Booking_Id           integer  NOT NULL ,
	Contact_Id           integer  NOT NULL ,
	License_number       varchar(20)  NULL ,
	Date_of_Booking      datetime  NULL ,
	Booking_Details      varchar(20)  NULL 
)
go



ALTER TABLE Service_Bookings
	ADD CONSTRAINT XPKService_Bookings PRIMARY KEY  CLUSTERED (Booking_Id ASC)
go




ALTER TABLE Car_Models
	ADD CONSTRAINT R_40 FOREIGN KEY (Car_Manufacturer_Code) REFERENCES Car_Manufacturer(Car_Manufacturer_Code)
		
		
go




ALTER TABLE Cars
	ADD CONSTRAINT R_19 FOREIGN KEY (Model_Code) REFERENCES Car_Models(Model_Code)
		
		
go




ALTER TABLE Defects
	ADD CONSTRAINT R_28 FOREIGN KEY (License_number) REFERENCES Cars(License_number)
		
		
go




ALTER TABLE Mechanic_on_Services
	ADD CONSTRAINT R_33 FOREIGN KEY (Booking_Id) REFERENCES Service_Bookings(Booking_Id)
		
		
go




ALTER TABLE Mechanic_on_Services
	ADD CONSTRAINT R_34 FOREIGN KEY (Mechanic_Id) REFERENCES Mechanics(Mechanic_Id)
		
		
go




ALTER TABLE Parts_Order_List
	ADD CONSTRAINT R_31 FOREIGN KEY (Booking_Id) REFERENCES Service_Bookings(Booking_Id)
		
		
go




ALTER TABLE Parts_Order_List
	ADD CONSTRAINT R_32 FOREIGN KEY (Part_Id) REFERENCES Parts(Part_Id)
		
		
go




ALTER TABLE Service_Bookings
	ADD CONSTRAINT R_29 FOREIGN KEY (License_number) REFERENCES Cars(License_number)
		
		
go




ALTER TABLE Service_Bookings
	ADD CONSTRAINT R_30 FOREIGN KEY (Contact_Id) REFERENCES Contacts(Contact_Id)
		
		
go