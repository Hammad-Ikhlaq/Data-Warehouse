
CREATE TABLE Addresses
( 
	Address_Id           char(18)  NOT NULL ,
	Address_Line_1       char(18)  NULL ,
	Address_Line_2       char(18)  NULL ,
	Address_Line_3       char(18)  NULL ,
	Address_Line_4       char(18)  NULL ,
	Town                 char(18)  NULL ,
	Province             char(18)  NULL ,
	Country              char(18)  NULL ,
	Post_Zip_Country     char(18)  NULL ,
	Other_Address_Details char(18)  NULL ,
	City                 char(18)  NULL ,
	Region               char(18)  NULL ,
	State                char(18)  NULL ,
	House_Number         char(18)  NULL ,
	Street_Number        char(18)  NULL 
)
go



ALTER TABLE Addresses
	ADD CONSTRAINT XPKAddresses PRIMARY KEY  CLUSTERED (Address_Id ASC)
go



CREATE TABLE Car_Features
( 
	Car_Feature_Id       char(18)  NOT NULL ,
	Car_Feature_Description char(18)  NULL 
)
go



ALTER TABLE Car_Features
	ADD CONSTRAINT XPKCar_Features PRIMARY KEY  CLUSTERED (Car_Feature_Id ASC)
go



CREATE TABLE Car_Manufacturer
( 
	Car_Manufacturer_Code char(18)  NOT NULL ,
	Manufacturer_FullName char(18)  NULL ,
	Manufacturer_OtherDetails char(18)  NULL 
)
go



ALTER TABLE Car_Manufacturer
	ADD CONSTRAINT XPKCar_Manufacturer PRIMARY KEY  CLUSTERED (Car_Manufacturer_Code ASC)
go



CREATE TABLE Car_Models
( 
	Model_Code           char(18)  NOT NULL ,
	Car_Manufacturer_Code char(18)  NULL ,
	Model_Name           char(18)  NULL 
)
go



ALTER TABLE Car_Models
	ADD CONSTRAINT XPKCar_Models PRIMARY KEY  CLUSTERED (Model_Code ASC)
go



CREATE TABLE Cars
( 
	Car_Id               char(18)  NOT NULL ,
	Car_Manufacturer_Code char(18)  NULL ,
	Car_Year_of_Manufactre char(18)  NULL ,
	Model_Code           char(18)  NULL ,
	Other_Car_Details    char(18)  NULL ,
	Vehicle_Catagory_Code char(18)  NULL ,
	Current_Mileage      char(18)  NULL ,
	Engine_Size          char(18)  NULL ,
	License_Number       char(18)  NULL 
)
go



ALTER TABLE Cars
	ADD CONSTRAINT XPKCars PRIMARY KEY  CLUSTERED (Car_Id ASC)
go



CREATE TABLE Cars_For_Sale
( 
	Asking_Price         char(18)  NULL ,
	Date_Acquired        char(18)  NULL ,
	Registration_Year    char(18)  NULL ,
	Other_Car_Details    char(18)  NULL ,
	Car_Id               char(18)  NOT NULL 
)
go



ALTER TABLE Cars_For_Sale
	ADD CONSTRAINT XPKCars_For_Sale PRIMARY KEY  CLUSTERED (Car_Id ASC)
go



CREATE TABLE Cars_Sold
( 
	Customer_Id          char(18)  NULL ,
	Agreed_Price         char(18)  NULL ,
	Date_Sold            char(18)  NULL ,
	Other_Details        char(18)  NULL ,
	Car_Id               char(18)  NOT NULL 
)
go



ALTER TABLE Cars_Sold
	ADD CONSTRAINT XPKCars_Sold PRIMARY KEY  CLUSTERED (Car_Id ASC)
go



CREATE TABLE Contacts
( 
	Contact_Id           char(18)  NOT NULL ,
	First_Name           char(18)  NULL ,
	Middle_Name          char(18)  NULL ,
	Last_Name            char(18)  NULL ,
	Gender               char(18)  NULL ,
	Email_Address        char(18)  NULL ,
	Phone_Number         char(18)  NULL ,
	Address_Line_1       char(18)  NULL ,
	Address_Line_2       char(18)  NULL ,
	Address_Line_3       char(18)  NULL ,
	Address_Line_4       char(18)  NULL ,
	Town_City            char(18)  NULL ,
	State_Country_Province char(18)  NULL ,
	Country              char(18)  NULL ,
	Other_Details        char(18)  NULL 
)
go



ALTER TABLE Contacts
	ADD CONSTRAINT XPKContacts PRIMARY KEY  CLUSTERED (Contact_Id ASC)
go



CREATE TABLE Customer
( 
	Customer_Id          char(18)  NOT NULL ,
	Cell_Phone_Number    char(18)  NULL ,
	Email_Address        char(18)  NULL ,
	Other_Customer_Details char(18)  NULL ,
	Fname                char(18)  NULL ,
	Gender               char(18)  NULL ,
	Lname                char(18)  NULL ,
	Date_became_customer char(18)  NULL ,
	Marital_Status       char(18)  NULL ,
	Occupation           char(18)  NULL ,
	Annual_income        char(18)  NULL ,
	Education            char(18)  NULL ,
	Customer_Type        char(18)  NULL 
)
go



ALTER TABLE Customer
	ADD CONSTRAINT XPKCustomer PRIMARY KEY  CLUSTERED (Customer_Id ASC)
go



CREATE TABLE Customer_Addresses
( 
	Customer_Id          char(18)  NOT NULL ,
	Address_Id           char(18)  NOT NULL ,
	Date_from            char(18)  NULL ,
	Date_to              char(18)  NULL 
)
go



ALTER TABLE Customer_Addresses
	ADD CONSTRAINT XPKCustomer_Addresses PRIMARY KEY  CLUSTERED (Customer_Id ASC,Address_Id ASC)
go



CREATE TABLE Customer_Preferences
( 
	Customer_Preference_Id char(18)  NOT NULL ,
	Car_Feature_Id       char(18)  NULL ,
	Customer_Id          char(18)  NULL ,
	Customer_preference_Detail char(18)  NULL 
)
go



ALTER TABLE Customer_Preferences
	ADD CONSTRAINT XPKCustomer_Preferences PRIMARY KEY  CLUSTERED (Customer_Preference_Id ASC)
go



CREATE TABLE Defects
( 
	Defect_Id            char(18)  NOT NULL ,
	Car_Id               char(18)  NULL ,
	Defect_Description   char(18)  NULL ,
	Car_Defect_Reported  char(18)  NULL ,
	Other_Details        char(18)  NULL 
)
go



ALTER TABLE Defects
	ADD CONSTRAINT XPKDefects PRIMARY KEY  CLUSTERED (Defect_Id ASC)
go



CREATE TABLE Features_On_Cars_For_Sale
( 
	Car_Feature_Id       char(18)  NOT NULL ,
	Car_Id               char(18)  NOT NULL 
)
go



ALTER TABLE Features_On_Cars_For_Sale
	ADD CONSTRAINT XPKFeatures_On_Cars_For_Sale PRIMARY KEY  CLUSTERED (Car_Feature_Id ASC,Car_Id ASC)
go



CREATE TABLE Mechanic_on_Services
( 
	Mechanic_Id          char(18)  NOT NULL ,
	Booking_Id           char(18)  NOT NULL 
)
go



ALTER TABLE Mechanic_on_Services
	ADD CONSTRAINT XPKMechanic_on_Services PRIMARY KEY  CLUSTERED (Mechanic_Id ASC,Booking_Id ASC)
go



CREATE TABLE Mechanics
( 
	Mechanic_Id          char(18)  NOT NULL ,
	Mechanic_Name        char(18)  NULL ,
	Mechanic_Details     char(18)  NULL 
)
go



ALTER TABLE Mechanics
	ADD CONSTRAINT XPKMechanics PRIMARY KEY  CLUSTERED (Mechanic_Id ASC)
go



CREATE TABLE Part_Levels
( 
	Part_Level_Code      char(18)  NOT NULL ,
	Part_Level_Description char(18)  NULL 
)
go



ALTER TABLE Part_Levels
	ADD CONSTRAINT XPKPart_Levels PRIMARY KEY  CLUSTERED (Part_Level_Code ASC)
go



CREATE TABLE Part_Manufacturer
( 
	Part_Manufacturer_Code char(18)  NOT NULL ,
	Part_Manufacturer_Name char(18)  NULL 
)
go



ALTER TABLE Part_Manufacturer
	ADD CONSTRAINT XPKPart_Manufacturer PRIMARY KEY  CLUSTERED (Part_Manufacturer_Code ASC)
go



CREATE TABLE Part_Types
( 
	Part_Type_Code       char(18)  NOT NULL ,
	Part_Type_Description char(18)  NULL 
)
go



ALTER TABLE Part_Types
	ADD CONSTRAINT XPKPart_Types PRIMARY KEY  CLUSTERED (Part_Type_Code ASC)
go



CREATE TABLE Parts
( 
	Part_Id              char(18)  NOT NULL ,
	Part_Name            char(18)  NULL ,
	Part_Description     char(18)  NULL ,
	Number_in_Stock      char(18)  NULL ,
	Other_Details        char(18)  NULL ,
	Car_Id               char(18)  NULL ,
	Parent_Part_id       char(18)  NULL ,
	Part_Level_Code      char(18)  NULL ,
	Part_Manufacturer_Code char(18)  NULL ,
	Part_Type_Code       char(18)  NULL ,
	Supplier_Id          char(18)  NULL ,
	Weight               char(18)  NULL ,
	Condition            char(18)  NULL ,
	Mileage_Donor_Vehicle char(18)  NULL 
)
go



ALTER TABLE Parts
	ADD CONSTRAINT XPKParts PRIMARY KEY  CLUSTERED (Part_Id ASC)
go



CREATE TABLE Parts_Order_List
( 
	Booking_Id           char(18)  NOT NULL ,
	Part_Id              char(18)  NOT NULL 
)
go



ALTER TABLE Parts_Order_List
	ADD CONSTRAINT XPKParts_Order_List PRIMARY KEY  CLUSTERED (Booking_Id ASC,Part_Id ASC)
go



CREATE TABLE Service_Bookings
( 
	Booking_Id           char(18)  NOT NULL ,
	Contact_Id           char(18)  NULL ,
	Car_Id               char(18)  NULL ,
	Date_of_Booking      char(18)  NULL ,
	Booking_Details      char(18)  NULL 
)
go



ALTER TABLE Service_Bookings
	ADD CONSTRAINT XPKService_Bookings PRIMARY KEY  CLUSTERED (Booking_Id ASC)
go



CREATE TABLE Suppliers
( 
	Supplier_Id          char(18)  NOT NULL ,
	Supplier_Details     char(18)  NULL 
)
go



ALTER TABLE Suppliers
	ADD CONSTRAINT XPKSuppliers PRIMARY KEY  CLUSTERED (Supplier_Id ASC)
go



CREATE TABLE Vehicle_Categories
( 
	Vehicle_Catagory_Code char(18)  NOT NULL ,
	Vehicle_Catagory_Description char(18)  NULL 
)
go



ALTER TABLE Vehicle_Categories
	ADD CONSTRAINT XPKVehicle_Categories PRIMARY KEY  CLUSTERED (Vehicle_Catagory_Code ASC)
go




ALTER TABLE Car_Models
	ADD CONSTRAINT R_40 FOREIGN KEY (Car_Manufacturer_Code) REFERENCES Car_Manufacturer(Car_Manufacturer_Code)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cars
	ADD CONSTRAINT R_18 FOREIGN KEY (Car_Manufacturer_Code) REFERENCES Car_Manufacturer(Car_Manufacturer_Code)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cars
	ADD CONSTRAINT R_19 FOREIGN KEY (Model_Code) REFERENCES Car_Models(Model_Code)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cars
	ADD CONSTRAINT R_20 FOREIGN KEY (Vehicle_Catagory_Code) REFERENCES Vehicle_Categories(Vehicle_Catagory_Code)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cars_For_Sale
	ADD  FOREIGN KEY (Car_Id) REFERENCES Cars(Car_Id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go




ALTER TABLE Cars_Sold
	ADD CONSTRAINT R_8 FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Cars_Sold
	ADD  FOREIGN KEY (Car_Id) REFERENCES Cars(Car_Id)
		ON DELETE CASCADE
		ON UPDATE CASCADE
go




ALTER TABLE Customer_Addresses
	ADD CONSTRAINT R_41 FOREIGN KEY (Address_Id) REFERENCES Addresses(Address_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Customer_Addresses
	ADD CONSTRAINT R_42 FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Customer_Preferences
	ADD CONSTRAINT R_4 FOREIGN KEY (Customer_Id) REFERENCES Customer(Customer_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Customer_Preferences
	ADD CONSTRAINT R_7 FOREIGN KEY (Car_Feature_Id) REFERENCES Car_Features(Car_Feature_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Defects
	ADD CONSTRAINT R_28 FOREIGN KEY (Car_Id) REFERENCES Cars(Car_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Features_On_Cars_For_Sale
	ADD CONSTRAINT R_10 FOREIGN KEY (Car_Feature_Id) REFERENCES Car_Features(Car_Feature_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Features_On_Cars_For_Sale
	ADD CONSTRAINT R_11 FOREIGN KEY (Car_Id) REFERENCES Cars_For_Sale(Car_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Mechanic_on_Services
	ADD CONSTRAINT R_33 FOREIGN KEY (Booking_Id) REFERENCES Service_Bookings(Booking_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Mechanic_on_Services
	ADD CONSTRAINT R_34 FOREIGN KEY (Mechanic_Id) REFERENCES Mechanics(Mechanic_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Parts
	ADD CONSTRAINT R_35 FOREIGN KEY (Car_Id) REFERENCES Cars(Car_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Parts
	ADD CONSTRAINT R_36 FOREIGN KEY (Supplier_Id) REFERENCES Suppliers(Supplier_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Parts
	ADD CONSTRAINT R_37 FOREIGN KEY (Part_Type_Code) REFERENCES Part_Types(Part_Type_Code)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Parts
	ADD CONSTRAINT R_38 FOREIGN KEY (Part_Manufacturer_Code) REFERENCES Part_Manufacturer(Part_Manufacturer_Code)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Parts
	ADD CONSTRAINT R_39 FOREIGN KEY (Part_Level_Code) REFERENCES Part_Levels(Part_Level_Code)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Parts_Order_List
	ADD CONSTRAINT R_31 FOREIGN KEY (Booking_Id) REFERENCES Service_Bookings(Booking_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Parts_Order_List
	ADD CONSTRAINT R_32 FOREIGN KEY (Part_Id) REFERENCES Parts(Part_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Service_Bookings
	ADD CONSTRAINT R_29 FOREIGN KEY (Car_Id) REFERENCES Cars(Car_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




ALTER TABLE Service_Bookings
	ADD CONSTRAINT R_30 FOREIGN KEY (Contact_Id) REFERENCES Contacts(Contact_Id)
		ON DELETE NO ACTION
		ON UPDATE NO ACTION
go




CREATE TRIGGER tD_Addresses ON Addresses FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Addresses */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Addresses  Customer_Addresses on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010926", PARENT_OWNER="", PARENT_TABLE="Addresses"
    CHILD_OWNER="", CHILD_TABLE="Customer_Addresses"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="Address_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Customer_Addresses
      WHERE
        /*  %JoinFKPK(Customer_Addresses,deleted," = "," AND") */
        Customer_Addresses.Address_Id = deleted.Address_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Addresses because Customer_Addresses exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Addresses ON Addresses FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Addresses */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insAddress_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Addresses  Customer_Addresses on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000121fa", PARENT_OWNER="", PARENT_TABLE="Addresses"
    CHILD_OWNER="", CHILD_TABLE="Customer_Addresses"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="Address_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Address_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Customer_Addresses
      WHERE
        /*  %JoinFKPK(Customer_Addresses,deleted," = "," AND") */
        Customer_Addresses.Address_Id = deleted.Address_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Addresses because Customer_Addresses exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Car_Features ON Car_Features FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Car_Features */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Car_Features  Customer_Preferences on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00023502", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="Car_Feature_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Customer_Preferences
      WHERE
        /*  %JoinFKPK(Customer_Preferences,deleted," = "," AND") */
        Customer_Preferences.Car_Feature_Id = deleted.Car_Feature_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Car_Features because Customer_Preferences exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Car_Features  Features_On_Cars_For_Sale on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Features_On_Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Car_Feature_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Features_On_Cars_For_Sale
      WHERE
        /*  %JoinFKPK(Features_On_Cars_For_Sale,deleted," = "," AND") */
        Features_On_Cars_For_Sale.Car_Feature_Id = deleted.Car_Feature_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Car_Features because Features_On_Cars_For_Sale exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Car_Features ON Car_Features FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Car_Features */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCar_Feature_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Car_Features  Customer_Preferences on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00027196", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="Car_Feature_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Feature_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Customer_Preferences
      WHERE
        /*  %JoinFKPK(Customer_Preferences,deleted," = "," AND") */
        Customer_Preferences.Car_Feature_Id = deleted.Car_Feature_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Car_Features because Customer_Preferences exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Car_Features  Features_On_Cars_For_Sale on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Features_On_Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Car_Feature_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Feature_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Features_On_Cars_For_Sale
      WHERE
        /*  %JoinFKPK(Features_On_Cars_For_Sale,deleted," = "," AND") */
        Features_On_Cars_For_Sale.Car_Feature_Id = deleted.Car_Feature_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Car_Features because Features_On_Cars_For_Sale exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Car_Manufacturer ON Car_Manufacturer FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Car_Manufacturer */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Cars on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00021e19", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="Car_Manufacturer_Code" */
    IF EXISTS (
      SELECT * FROM deleted,Cars
      WHERE
        /*  %JoinFKPK(Cars,deleted," = "," AND") */
        Cars.Car_Manufacturer_Code = deleted.Car_Manufacturer_Code
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Car_Manufacturer because Cars exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Models on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Models"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="Car_Manufacturer_Code" */
    IF EXISTS (
      SELECT * FROM deleted,Car_Models
      WHERE
        /*  %JoinFKPK(Car_Models,deleted," = "," AND") */
        Car_Models.Car_Manufacturer_Code = deleted.Car_Manufacturer_Code
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Car_Manufacturer because Car_Models exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Car_Manufacturer ON Car_Manufacturer FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Car_Manufacturer */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCar_Manufacturer_Code char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Cars on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000250bf", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="Car_Manufacturer_Code" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Manufacturer_Code)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Cars
      WHERE
        /*  %JoinFKPK(Cars,deleted," = "," AND") */
        Cars.Car_Manufacturer_Code = deleted.Car_Manufacturer_Code
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Car_Manufacturer because Cars exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Models on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Models"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="Car_Manufacturer_Code" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Manufacturer_Code)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Car_Models
      WHERE
        /*  %JoinFKPK(Car_Models,deleted," = "," AND") */
        Car_Models.Car_Manufacturer_Code = deleted.Car_Manufacturer_Code
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Car_Manufacturer because Car_Models exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Car_Models ON Car_Models FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Car_Models */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Car_Models  Cars on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00025343", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="Model_Code" */
    IF EXISTS (
      SELECT * FROM deleted,Cars
      WHERE
        /*  %JoinFKPK(Cars,deleted," = "," AND") */
        Cars.Model_Code = deleted.Model_Code
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Car_Models because Cars exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Models on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Models"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="Car_Manufacturer_Code" */
    IF EXISTS (SELECT * FROM deleted,Car_Manufacturer
      WHERE
        /* %JoinFKPK(deleted,Car_Manufacturer," = "," AND") */
        deleted.Car_Manufacturer_Code = Car_Manufacturer.Car_Manufacturer_Code AND
        NOT EXISTS (
          SELECT * FROM Car_Models
          WHERE
            /* %JoinFKPK(Car_Models,Car_Manufacturer," = "," AND") */
            Car_Models.Car_Manufacturer_Code = Car_Manufacturer.Car_Manufacturer_Code
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Car_Models because Car_Manufacturer exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Car_Models ON Car_Models FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Car_Models */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insModel_Code char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Car_Models  Cars on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00029f80", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="Model_Code" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Model_Code)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Cars
      WHERE
        /*  %JoinFKPK(Cars,deleted," = "," AND") */
        Cars.Model_Code = deleted.Model_Code
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Car_Models because Cars exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Models on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Models"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_40", FK_COLUMNS="Car_Manufacturer_Code" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Manufacturer_Code)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Car_Manufacturer
        WHERE
          /* %JoinFKPK(inserted,Car_Manufacturer) */
          inserted.Car_Manufacturer_Code = Car_Manufacturer.Car_Manufacturer_Code
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Car_Manufacturer_Code IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Car_Models because Car_Manufacturer does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Cars ON Cars FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Cars */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Cars  Cars_Sold on parent delete cascade */
    /* ERWIN_RELATION:CHECKSUM="00080ebb", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="is_a", FK_COLUMNS="Car_Id" */
    DELETE Cars_Sold
      FROM Cars_Sold,deleted
      WHERE
        /*  %JoinFKPK(Cars_Sold,deleted," = "," AND") */
        Cars_Sold.Car_Id = deleted.Car_Id

    /* ERwin Builtin Trigger */
    /* Cars  Cars_For_Sale on parent delete cascade */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="is_a", FK_COLUMNS="Car_Id" */
    DELETE Cars_For_Sale
      FROM Cars_For_Sale,deleted
      WHERE
        /*  %JoinFKPK(Cars_For_Sale,deleted," = "," AND") */
        Cars_For_Sale.Car_Id = deleted.Car_Id

    /* ERwin Builtin Trigger */
    /* Cars  Defects on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Defects"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="Car_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Defects
      WHERE
        /*  %JoinFKPK(Defects,deleted," = "," AND") */
        Defects.Car_Id = deleted.Car_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cars because Defects exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cars  Service_Bookings on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Service_Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="Car_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Service_Bookings
      WHERE
        /*  %JoinFKPK(Service_Bookings,deleted," = "," AND") */
        Service_Bookings.Car_Id = deleted.Car_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cars because Service_Bookings exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cars  Parts on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="Car_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Car_Id = deleted.Car_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cars because Parts exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Cars on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="Car_Manufacturer_Code" */
    IF EXISTS (SELECT * FROM deleted,Car_Manufacturer
      WHERE
        /* %JoinFKPK(deleted,Car_Manufacturer," = "," AND") */
        deleted.Car_Manufacturer_Code = Car_Manufacturer.Car_Manufacturer_Code AND
        NOT EXISTS (
          SELECT * FROM Cars
          WHERE
            /* %JoinFKPK(Cars,Car_Manufacturer," = "," AND") */
            Cars.Car_Manufacturer_Code = Car_Manufacturer.Car_Manufacturer_Code
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cars because Car_Manufacturer exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Car_Models  Cars on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="Model_Code" */
    IF EXISTS (SELECT * FROM deleted,Car_Models
      WHERE
        /* %JoinFKPK(deleted,Car_Models," = "," AND") */
        deleted.Model_Code = Car_Models.Model_Code AND
        NOT EXISTS (
          SELECT * FROM Cars
          WHERE
            /* %JoinFKPK(Cars,Car_Models," = "," AND") */
            Cars.Model_Code = Car_Models.Model_Code
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cars because Car_Models exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Cars on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="Vehicle_Catagory_Code" */
    IF EXISTS (SELECT * FROM deleted,Vehicle_Categories
      WHERE
        /* %JoinFKPK(deleted,Vehicle_Categories," = "," AND") */
        deleted.Vehicle_Catagory_Code = Vehicle_Categories.Vehicle_Catagory_Code AND
        NOT EXISTS (
          SELECT * FROM Cars
          WHERE
            /* %JoinFKPK(Cars,Vehicle_Categories," = "," AND") */
            Cars.Vehicle_Catagory_Code = Vehicle_Categories.Vehicle_Catagory_Code
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cars because Vehicle_Categories exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Cars ON Cars FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Cars */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCar_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Cars  Cars_Sold on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="000a2444", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="is_a", FK_COLUMNS="Car_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insCar_Id = inserted.Car_Id
        FROM inserted
      UPDATE Cars_Sold
      SET
        /*  %JoinFKPK(Cars_Sold,@ins," = ",",") */
        Cars_Sold.Car_Id = @insCar_Id
      FROM Cars_Sold,inserted,deleted
      WHERE
        /*  %JoinFKPK(Cars_Sold,deleted," = "," AND") */
        Cars_Sold.Car_Id = deleted.Car_Id
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = 'Cannot cascade Cars update because more than one row has been affected.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars  Cars_For_Sale on parent update cascade */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="is_a", FK_COLUMNS="Car_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    IF @NUMROWS = 1
    BEGIN
      SELECT @insCar_Id = inserted.Car_Id
        FROM inserted
      UPDATE Cars_For_Sale
      SET
        /*  %JoinFKPK(Cars_For_Sale,@ins," = ",",") */
        Cars_For_Sale.Car_Id = @insCar_Id
      FROM Cars_For_Sale,inserted,deleted
      WHERE
        /*  %JoinFKPK(Cars_For_Sale,deleted," = "," AND") */
        Cars_For_Sale.Car_Id = deleted.Car_Id
    END
    ELSE
    BEGIN
      SELECT @errno = 30006,
             @errmsg = 'Cannot cascade Cars update because more than one row has been affected.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars  Defects on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Defects"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="Car_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Defects
      WHERE
        /*  %JoinFKPK(Defects,deleted," = "," AND") */
        Defects.Car_Id = deleted.Car_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cars because Defects exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars  Service_Bookings on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Service_Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="Car_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Service_Bookings
      WHERE
        /*  %JoinFKPK(Service_Bookings,deleted," = "," AND") */
        Service_Bookings.Car_Id = deleted.Car_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cars because Service_Bookings exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars  Parts on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="Car_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Car_Id = deleted.Car_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cars because Parts exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Cars on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="Car_Manufacturer_Code" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Manufacturer_Code)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Car_Manufacturer
        WHERE
          /* %JoinFKPK(inserted,Car_Manufacturer) */
          inserted.Car_Manufacturer_Code = Car_Manufacturer.Car_Manufacturer_Code
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Car_Manufacturer_Code IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cars because Car_Manufacturer does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Car_Models  Cars on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="Model_Code" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Model_Code)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Car_Models
        WHERE
          /* %JoinFKPK(inserted,Car_Models) */
          inserted.Model_Code = Car_Models.Model_Code
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Model_Code IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cars because Car_Models does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Cars on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="Vehicle_Catagory_Code" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Vehicle_Catagory_Code)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Vehicle_Categories
        WHERE
          /* %JoinFKPK(inserted,Vehicle_Categories) */
          inserted.Vehicle_Catagory_Code = Vehicle_Categories.Vehicle_Catagory_Code
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Vehicle_Catagory_Code IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cars because Vehicle_Categories does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Cars_For_Sale ON Cars_For_Sale FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Cars_For_Sale */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Cars_For_Sale  Features_On_Cars_For_Sale on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00024359", PARENT_OWNER="", PARENT_TABLE="Cars_For_Sale"
    CHILD_OWNER="", CHILD_TABLE="Features_On_Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="Car_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Features_On_Cars_For_Sale
      WHERE
        /*  %JoinFKPK(Features_On_Cars_For_Sale,deleted," = "," AND") */
        Features_On_Cars_For_Sale.Car_Id = deleted.Car_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Cars_For_Sale because Features_On_Cars_For_Sale exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cars  Cars_For_Sale on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="is_a", FK_COLUMNS="Car_Id" */
    IF EXISTS (SELECT * FROM deleted,Cars
      WHERE
        /* %JoinFKPK(deleted,Cars," = "," AND") */
        deleted.Car_Id = Cars.Car_Id AND
        NOT EXISTS (
          SELECT * FROM Cars_For_Sale
          WHERE
            /* %JoinFKPK(Cars_For_Sale,Cars," = "," AND") */
            Cars_For_Sale.Car_Id = Cars.Car_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cars_For_Sale because Cars exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Cars_For_Sale ON Cars_For_Sale FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Cars_For_Sale */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCar_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Cars_For_Sale  Features_On_Cars_For_Sale on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00027375", PARENT_OWNER="", PARENT_TABLE="Cars_For_Sale"
    CHILD_OWNER="", CHILD_TABLE="Features_On_Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="Car_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Features_On_Cars_For_Sale
      WHERE
        /*  %JoinFKPK(Features_On_Cars_For_Sale,deleted," = "," AND") */
        Features_On_Cars_For_Sale.Car_Id = deleted.Car_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Cars_For_Sale because Features_On_Cars_For_Sale exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars  Cars_For_Sale on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="is_a", FK_COLUMNS="Car_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cars
        WHERE
          /* %JoinFKPK(inserted,Cars) */
          inserted.Car_Id = Cars.Car_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cars_For_Sale because Cars does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Cars_Sold ON Cars_Sold FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Cars_Sold */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Customer  Cars_Sold on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00023c3e", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="Customer_Id" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.Customer_Id = Customer.Customer_Id AND
        NOT EXISTS (
          SELECT * FROM Cars_Sold
          WHERE
            /* %JoinFKPK(Cars_Sold,Customer," = "," AND") */
            Cars_Sold.Customer_Id = Customer.Customer_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cars_Sold because Customer exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cars  Cars_Sold on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="is_a", FK_COLUMNS="Car_Id" */
    IF EXISTS (SELECT * FROM deleted,Cars
      WHERE
        /* %JoinFKPK(deleted,Cars," = "," AND") */
        deleted.Car_Id = Cars.Car_Id AND
        NOT EXISTS (
          SELECT * FROM Cars_Sold
          WHERE
            /* %JoinFKPK(Cars_Sold,Cars," = "," AND") */
            Cars_Sold.Car_Id = Cars.Car_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Cars_Sold because Cars exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Cars_Sold ON Cars_Sold FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Cars_Sold */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCar_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Customer  Cars_Sold on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002afaf", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="Customer_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Customer_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.Customer_Id = Customer.Customer_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Customer_Id IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cars_Sold because Customer does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars  Cars_Sold on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="is_a", FK_COLUMNS="Car_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cars
        WHERE
          /* %JoinFKPK(inserted,Cars) */
          inserted.Car_Id = Cars.Car_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Cars_Sold because Cars does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Contacts ON Contacts FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Contacts */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Contacts  Service_Bookings on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010791", PARENT_OWNER="", PARENT_TABLE="Contacts"
    CHILD_OWNER="", CHILD_TABLE="Service_Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="Contact_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Service_Bookings
      WHERE
        /*  %JoinFKPK(Service_Bookings,deleted," = "," AND") */
        Service_Bookings.Contact_Id = deleted.Contact_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Contacts because Service_Bookings exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Contacts ON Contacts FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Contacts */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insContact_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Contacts  Service_Bookings on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011e42", PARENT_OWNER="", PARENT_TABLE="Contacts"
    CHILD_OWNER="", CHILD_TABLE="Service_Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="Contact_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Contact_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Service_Bookings
      WHERE
        /*  %JoinFKPK(Service_Bookings,deleted," = "," AND") */
        Service_Bookings.Contact_Id = deleted.Contact_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Contacts because Service_Bookings exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Customer ON Customer FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Customer */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Customer  Customer_Preferences on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="000303c4", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="Customer_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Customer_Preferences
      WHERE
        /*  %JoinFKPK(Customer_Preferences,deleted," = "," AND") */
        Customer_Preferences.Customer_Id = deleted.Customer_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because Customer_Preferences exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Customer  Cars_Sold on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="Customer_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Cars_Sold
      WHERE
        /*  %JoinFKPK(Cars_Sold,deleted," = "," AND") */
        Cars_Sold.Customer_Id = deleted.Customer_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because Cars_Sold exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Customer  Customer_Addresses on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Addresses"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="Customer_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Customer_Addresses
      WHERE
        /*  %JoinFKPK(Customer_Addresses,deleted," = "," AND") */
        Customer_Addresses.Customer_Id = deleted.Customer_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Customer because Customer_Addresses exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Customer ON Customer FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Customer */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCustomer_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Customer  Customer_Preferences on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000352f4", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="Customer_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Customer_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Customer_Preferences
      WHERE
        /*  %JoinFKPK(Customer_Preferences,deleted," = "," AND") */
        Customer_Preferences.Customer_Id = deleted.Customer_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because Customer_Preferences exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Customer  Cars_Sold on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="Customer_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Customer_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Cars_Sold
      WHERE
        /*  %JoinFKPK(Cars_Sold,deleted," = "," AND") */
        Cars_Sold.Customer_Id = deleted.Customer_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because Cars_Sold exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Customer  Customer_Addresses on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Addresses"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="Customer_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Customer_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Customer_Addresses
      WHERE
        /*  %JoinFKPK(Customer_Addresses,deleted," = "," AND") */
        Customer_Addresses.Customer_Id = deleted.Customer_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Customer because Customer_Addresses exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Customer_Addresses ON Customer_Addresses FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Customer_Addresses */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Addresses  Customer_Addresses on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028ff4", PARENT_OWNER="", PARENT_TABLE="Addresses"
    CHILD_OWNER="", CHILD_TABLE="Customer_Addresses"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="Address_Id" */
    IF EXISTS (SELECT * FROM deleted,Addresses
      WHERE
        /* %JoinFKPK(deleted,Addresses," = "," AND") */
        deleted.Address_Id = Addresses.Address_Id AND
        NOT EXISTS (
          SELECT * FROM Customer_Addresses
          WHERE
            /* %JoinFKPK(Customer_Addresses,Addresses," = "," AND") */
            Customer_Addresses.Address_Id = Addresses.Address_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Customer_Addresses because Addresses exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Customer  Customer_Addresses on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Addresses"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="Customer_Id" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.Customer_Id = Customer.Customer_Id AND
        NOT EXISTS (
          SELECT * FROM Customer_Addresses
          WHERE
            /* %JoinFKPK(Customer_Addresses,Customer," = "," AND") */
            Customer_Addresses.Customer_Id = Customer.Customer_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Customer_Addresses because Customer exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Customer_Addresses ON Customer_Addresses FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Customer_Addresses */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCustomer_Id char(18), 
           @insAddress_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Addresses  Customer_Addresses on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002b565", PARENT_OWNER="", PARENT_TABLE="Addresses"
    CHILD_OWNER="", CHILD_TABLE="Customer_Addresses"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="Address_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Address_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Addresses
        WHERE
          /* %JoinFKPK(inserted,Addresses) */
          inserted.Address_Id = Addresses.Address_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Customer_Addresses because Addresses does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Customer  Customer_Addresses on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Addresses"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="Customer_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Customer_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.Customer_Id = Customer.Customer_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Customer_Addresses because Customer does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Customer_Preferences ON Customer_Preferences FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Customer_Preferences */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Customer  Customer_Preferences on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002b099", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="Customer_Id" */
    IF EXISTS (SELECT * FROM deleted,Customer
      WHERE
        /* %JoinFKPK(deleted,Customer," = "," AND") */
        deleted.Customer_Id = Customer.Customer_Id AND
        NOT EXISTS (
          SELECT * FROM Customer_Preferences
          WHERE
            /* %JoinFKPK(Customer_Preferences,Customer," = "," AND") */
            Customer_Preferences.Customer_Id = Customer.Customer_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Customer_Preferences because Customer exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Car_Features  Customer_Preferences on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="Car_Feature_Id" */
    IF EXISTS (SELECT * FROM deleted,Car_Features
      WHERE
        /* %JoinFKPK(deleted,Car_Features," = "," AND") */
        deleted.Car_Feature_Id = Car_Features.Car_Feature_Id AND
        NOT EXISTS (
          SELECT * FROM Customer_Preferences
          WHERE
            /* %JoinFKPK(Customer_Preferences,Car_Features," = "," AND") */
            Customer_Preferences.Car_Feature_Id = Car_Features.Car_Feature_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Customer_Preferences because Car_Features exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Customer_Preferences ON Customer_Preferences FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Customer_Preferences */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCustomer_Preference_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Customer  Customer_Preferences on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00031237", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="Customer_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Customer_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Customer
        WHERE
          /* %JoinFKPK(inserted,Customer) */
          inserted.Customer_Id = Customer.Customer_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Customer_Id IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Customer_Preferences because Customer does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Car_Features  Customer_Preferences on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="Car_Feature_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Feature_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Car_Features
        WHERE
          /* %JoinFKPK(inserted,Car_Features) */
          inserted.Car_Feature_Id = Car_Features.Car_Feature_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Car_Feature_Id IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Customer_Preferences because Car_Features does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Defects ON Defects FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Defects */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Cars  Defects on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="000115d6", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Defects"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="Car_Id" */
    IF EXISTS (SELECT * FROM deleted,Cars
      WHERE
        /* %JoinFKPK(deleted,Cars," = "," AND") */
        deleted.Car_Id = Cars.Car_Id AND
        NOT EXISTS (
          SELECT * FROM Defects
          WHERE
            /* %JoinFKPK(Defects,Cars," = "," AND") */
            Defects.Car_Id = Cars.Car_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Defects because Cars exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Defects ON Defects FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Defects */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insDefect_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Cars  Defects on child update no action */
  /* ERWIN_RELATION:CHECKSUM="000164ae", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Defects"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="Car_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cars
        WHERE
          /* %JoinFKPK(inserted,Cars) */
          inserted.Car_Id = Cars.Car_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Car_Id IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Defects because Cars does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Features_On_Cars_For_Sale ON Features_On_Cars_For_Sale FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Features_On_Cars_For_Sale */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Car_Features  Features_On_Cars_For_Sale on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002e4f6", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Features_On_Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Car_Feature_Id" */
    IF EXISTS (SELECT * FROM deleted,Car_Features
      WHERE
        /* %JoinFKPK(deleted,Car_Features," = "," AND") */
        deleted.Car_Feature_Id = Car_Features.Car_Feature_Id AND
        NOT EXISTS (
          SELECT * FROM Features_On_Cars_For_Sale
          WHERE
            /* %JoinFKPK(Features_On_Cars_For_Sale,Car_Features," = "," AND") */
            Features_On_Cars_For_Sale.Car_Feature_Id = Car_Features.Car_Feature_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Features_On_Cars_For_Sale because Car_Features exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cars_For_Sale  Features_On_Cars_For_Sale on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars_For_Sale"
    CHILD_OWNER="", CHILD_TABLE="Features_On_Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="Car_Id" */
    IF EXISTS (SELECT * FROM deleted,Cars_For_Sale
      WHERE
        /* %JoinFKPK(deleted,Cars_For_Sale," = "," AND") */
        deleted.Car_Id = Cars_For_Sale.Car_Id AND
        NOT EXISTS (
          SELECT * FROM Features_On_Cars_For_Sale
          WHERE
            /* %JoinFKPK(Features_On_Cars_For_Sale,Cars_For_Sale," = "," AND") */
            Features_On_Cars_For_Sale.Car_Id = Cars_For_Sale.Car_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Features_On_Cars_For_Sale because Cars_For_Sale exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Features_On_Cars_For_Sale ON Features_On_Cars_For_Sale FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Features_On_Cars_For_Sale */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insCar_Feature_Id char(18), 
           @insCar_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Car_Features  Features_On_Cars_For_Sale on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002e3f3", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Features_On_Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="Car_Feature_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Feature_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Car_Features
        WHERE
          /* %JoinFKPK(inserted,Car_Features) */
          inserted.Car_Feature_Id = Car_Features.Car_Feature_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Features_On_Cars_For_Sale because Car_Features does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars_For_Sale  Features_On_Cars_For_Sale on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars_For_Sale"
    CHILD_OWNER="", CHILD_TABLE="Features_On_Cars_For_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="Car_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cars_For_Sale
        WHERE
          /* %JoinFKPK(inserted,Cars_For_Sale) */
          inserted.Car_Id = Cars_For_Sale.Car_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Features_On_Cars_For_Sale because Cars_For_Sale does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Mechanic_on_Services ON Mechanic_on_Services FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Mechanic_on_Services */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Service_Bookings  Mechanic_on_Services on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="0002b877", PARENT_OWNER="", PARENT_TABLE="Service_Bookings"
    CHILD_OWNER="", CHILD_TABLE="Mechanic_on_Services"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="Booking_Id" */
    IF EXISTS (SELECT * FROM deleted,Service_Bookings
      WHERE
        /* %JoinFKPK(deleted,Service_Bookings," = "," AND") */
        deleted.Booking_Id = Service_Bookings.Booking_Id AND
        NOT EXISTS (
          SELECT * FROM Mechanic_on_Services
          WHERE
            /* %JoinFKPK(Mechanic_on_Services,Service_Bookings," = "," AND") */
            Mechanic_on_Services.Booking_Id = Service_Bookings.Booking_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Mechanic_on_Services because Service_Bookings exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Mechanics  Mechanic_on_Services on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanics"
    CHILD_OWNER="", CHILD_TABLE="Mechanic_on_Services"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="Mechanic_Id" */
    IF EXISTS (SELECT * FROM deleted,Mechanics
      WHERE
        /* %JoinFKPK(deleted,Mechanics," = "," AND") */
        deleted.Mechanic_Id = Mechanics.Mechanic_Id AND
        NOT EXISTS (
          SELECT * FROM Mechanic_on_Services
          WHERE
            /* %JoinFKPK(Mechanic_on_Services,Mechanics," = "," AND") */
            Mechanic_on_Services.Mechanic_Id = Mechanics.Mechanic_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Mechanic_on_Services because Mechanics exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Mechanic_on_Services ON Mechanic_on_Services FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Mechanic_on_Services */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insMechanic_Id char(18), 
           @insBooking_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Service_Bookings  Mechanic_on_Services on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002cfe4", PARENT_OWNER="", PARENT_TABLE="Service_Bookings"
    CHILD_OWNER="", CHILD_TABLE="Mechanic_on_Services"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="Booking_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Booking_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Service_Bookings
        WHERE
          /* %JoinFKPK(inserted,Service_Bookings) */
          inserted.Booking_Id = Service_Bookings.Booking_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Mechanic_on_Services because Service_Bookings does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Mechanics  Mechanic_on_Services on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanics"
    CHILD_OWNER="", CHILD_TABLE="Mechanic_on_Services"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="Mechanic_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Mechanic_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Mechanics
        WHERE
          /* %JoinFKPK(inserted,Mechanics) */
          inserted.Mechanic_Id = Mechanics.Mechanic_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Mechanic_on_Services because Mechanics does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Mechanics ON Mechanics FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Mechanics */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Mechanics  Mechanic_on_Services on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010720", PARENT_OWNER="", PARENT_TABLE="Mechanics"
    CHILD_OWNER="", CHILD_TABLE="Mechanic_on_Services"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="Mechanic_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Mechanic_on_Services
      WHERE
        /*  %JoinFKPK(Mechanic_on_Services,deleted," = "," AND") */
        Mechanic_on_Services.Mechanic_Id = deleted.Mechanic_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Mechanics because Mechanic_on_Services exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Mechanics ON Mechanics FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Mechanics */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insMechanic_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Mechanics  Mechanic_on_Services on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000132d9", PARENT_OWNER="", PARENT_TABLE="Mechanics"
    CHILD_OWNER="", CHILD_TABLE="Mechanic_on_Services"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="Mechanic_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Mechanic_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Mechanic_on_Services
      WHERE
        /*  %JoinFKPK(Mechanic_on_Services,deleted," = "," AND") */
        Mechanic_on_Services.Mechanic_Id = deleted.Mechanic_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Mechanics because Mechanic_on_Services exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Part_Levels ON Part_Levels FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Part_Levels */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Part_Levels  Parts on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000f700", PARENT_OWNER="", PARENT_TABLE="Part_Levels"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="Part_Level_Code" */
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Part_Level_Code = deleted.Part_Level_Code
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Part_Levels because Parts exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Part_Levels ON Part_Levels FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Part_Levels */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insPart_Level_Code char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Part_Levels  Parts on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011302", PARENT_OWNER="", PARENT_TABLE="Part_Levels"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="Part_Level_Code" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Part_Level_Code)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Part_Level_Code = deleted.Part_Level_Code
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Part_Levels because Parts exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Part_Manufacturer ON Part_Manufacturer FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Part_Manufacturer */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Part_Manufacturer  Parts on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00010765", PARENT_OWNER="", PARENT_TABLE="Part_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="Part_Manufacturer_Code" */
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Part_Manufacturer_Code = deleted.Part_Manufacturer_Code
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Part_Manufacturer because Parts exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Part_Manufacturer ON Part_Manufacturer FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Part_Manufacturer */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insPart_Manufacturer_Code char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Part_Manufacturer  Parts on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011513", PARENT_OWNER="", PARENT_TABLE="Part_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="Part_Manufacturer_Code" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Part_Manufacturer_Code)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Part_Manufacturer_Code = deleted.Part_Manufacturer_Code
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Part_Manufacturer because Parts exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Part_Types ON Part_Types FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Part_Types */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Part_Types  Parts on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000ea0a", PARENT_OWNER="", PARENT_TABLE="Part_Types"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="Part_Type_Code" */
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Part_Type_Code = deleted.Part_Type_Code
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Part_Types because Parts exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Part_Types ON Part_Types FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Part_Types */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insPart_Type_Code char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Part_Types  Parts on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000103cc", PARENT_OWNER="", PARENT_TABLE="Part_Types"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="Part_Type_Code" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Part_Type_Code)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Part_Type_Code = deleted.Part_Type_Code
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Part_Types because Parts exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Parts ON Parts FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Parts */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Parts  Parts_Order_List on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0006d147", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Parts_Order_List"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="Part_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Parts_Order_List
      WHERE
        /*  %JoinFKPK(Parts_Order_List,deleted," = "," AND") */
        Parts_Order_List.Part_Id = deleted.Part_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Parts because Parts_Order_List exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cars  Parts on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="Car_Id" */
    IF EXISTS (SELECT * FROM deleted,Cars
      WHERE
        /* %JoinFKPK(deleted,Cars," = "," AND") */
        deleted.Car_Id = Cars.Car_Id AND
        NOT EXISTS (
          SELECT * FROM Parts
          WHERE
            /* %JoinFKPK(Parts,Cars," = "," AND") */
            Parts.Car_Id = Cars.Car_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Parts because Cars exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Suppliers  Parts on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Suppliers"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="Supplier_Id" */
    IF EXISTS (SELECT * FROM deleted,Suppliers
      WHERE
        /* %JoinFKPK(deleted,Suppliers," = "," AND") */
        deleted.Supplier_Id = Suppliers.Supplier_Id AND
        NOT EXISTS (
          SELECT * FROM Parts
          WHERE
            /* %JoinFKPK(Parts,Suppliers," = "," AND") */
            Parts.Supplier_Id = Suppliers.Supplier_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Parts because Suppliers exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Part_Types  Parts on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Part_Types"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="Part_Type_Code" */
    IF EXISTS (SELECT * FROM deleted,Part_Types
      WHERE
        /* %JoinFKPK(deleted,Part_Types," = "," AND") */
        deleted.Part_Type_Code = Part_Types.Part_Type_Code AND
        NOT EXISTS (
          SELECT * FROM Parts
          WHERE
            /* %JoinFKPK(Parts,Part_Types," = "," AND") */
            Parts.Part_Type_Code = Part_Types.Part_Type_Code
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Parts because Part_Types exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Part_Manufacturer  Parts on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Part_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="Part_Manufacturer_Code" */
    IF EXISTS (SELECT * FROM deleted,Part_Manufacturer
      WHERE
        /* %JoinFKPK(deleted,Part_Manufacturer," = "," AND") */
        deleted.Part_Manufacturer_Code = Part_Manufacturer.Part_Manufacturer_Code AND
        NOT EXISTS (
          SELECT * FROM Parts
          WHERE
            /* %JoinFKPK(Parts,Part_Manufacturer," = "," AND") */
            Parts.Part_Manufacturer_Code = Part_Manufacturer.Part_Manufacturer_Code
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Parts because Part_Manufacturer exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Part_Levels  Parts on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Part_Levels"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="Part_Level_Code" */
    IF EXISTS (SELECT * FROM deleted,Part_Levels
      WHERE
        /* %JoinFKPK(deleted,Part_Levels," = "," AND") */
        deleted.Part_Level_Code = Part_Levels.Part_Level_Code AND
        NOT EXISTS (
          SELECT * FROM Parts
          WHERE
            /* %JoinFKPK(Parts,Part_Levels," = "," AND") */
            Parts.Part_Level_Code = Part_Levels.Part_Level_Code
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Parts because Part_Levels exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Parts ON Parts FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Parts */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insPart_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Parts  Parts_Order_List on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00086139", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Parts_Order_List"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="Part_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Part_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Parts_Order_List
      WHERE
        /*  %JoinFKPK(Parts_Order_List,deleted," = "," AND") */
        Parts_Order_List.Part_Id = deleted.Part_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Parts because Parts_Order_List exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars  Parts on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="Car_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cars
        WHERE
          /* %JoinFKPK(inserted,Cars) */
          inserted.Car_Id = Cars.Car_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Car_Id IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Parts because Cars does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Suppliers  Parts on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Suppliers"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="Supplier_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Supplier_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Suppliers
        WHERE
          /* %JoinFKPK(inserted,Suppliers) */
          inserted.Supplier_Id = Suppliers.Supplier_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Supplier_Id IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Parts because Suppliers does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Part_Types  Parts on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Part_Types"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="Part_Type_Code" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Part_Type_Code)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Part_Types
        WHERE
          /* %JoinFKPK(inserted,Part_Types) */
          inserted.Part_Type_Code = Part_Types.Part_Type_Code
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Part_Type_Code IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Parts because Part_Types does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Part_Manufacturer  Parts on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Part_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_38", FK_COLUMNS="Part_Manufacturer_Code" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Part_Manufacturer_Code)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Part_Manufacturer
        WHERE
          /* %JoinFKPK(inserted,Part_Manufacturer) */
          inserted.Part_Manufacturer_Code = Part_Manufacturer.Part_Manufacturer_Code
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Part_Manufacturer_Code IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Parts because Part_Manufacturer does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Part_Levels  Parts on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Part_Levels"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="Part_Level_Code" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Part_Level_Code)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Part_Levels
        WHERE
          /* %JoinFKPK(inserted,Part_Levels) */
          inserted.Part_Level_Code = Part_Levels.Part_Level_Code
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Part_Level_Code IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Parts because Part_Levels does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Parts_Order_List ON Parts_Order_List FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Parts_Order_List */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Service_Bookings  Parts_Order_List on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00028b9d", PARENT_OWNER="", PARENT_TABLE="Service_Bookings"
    CHILD_OWNER="", CHILD_TABLE="Parts_Order_List"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="Booking_Id" */
    IF EXISTS (SELECT * FROM deleted,Service_Bookings
      WHERE
        /* %JoinFKPK(deleted,Service_Bookings," = "," AND") */
        deleted.Booking_Id = Service_Bookings.Booking_Id AND
        NOT EXISTS (
          SELECT * FROM Parts_Order_List
          WHERE
            /* %JoinFKPK(Parts_Order_List,Service_Bookings," = "," AND") */
            Parts_Order_List.Booking_Id = Service_Bookings.Booking_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Parts_Order_List because Service_Bookings exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Parts  Parts_Order_List on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Parts_Order_List"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="Part_Id" */
    IF EXISTS (SELECT * FROM deleted,Parts
      WHERE
        /* %JoinFKPK(deleted,Parts," = "," AND") */
        deleted.Part_Id = Parts.Part_Id AND
        NOT EXISTS (
          SELECT * FROM Parts_Order_List
          WHERE
            /* %JoinFKPK(Parts_Order_List,Parts," = "," AND") */
            Parts_Order_List.Part_Id = Parts.Part_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Parts_Order_List because Parts exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Parts_Order_List ON Parts_Order_List FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Parts_Order_List */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insBooking_Id char(18), 
           @insPart_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Service_Bookings  Parts_Order_List on child update no action */
  /* ERWIN_RELATION:CHECKSUM="0002b91b", PARENT_OWNER="", PARENT_TABLE="Service_Bookings"
    CHILD_OWNER="", CHILD_TABLE="Parts_Order_List"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="Booking_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Booking_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Service_Bookings
        WHERE
          /* %JoinFKPK(inserted,Service_Bookings) */
          inserted.Booking_Id = Service_Bookings.Booking_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Parts_Order_List because Service_Bookings does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Parts  Parts_Order_List on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Parts_Order_List"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="Part_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Part_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Parts
        WHERE
          /* %JoinFKPK(inserted,Parts) */
          inserted.Part_Id = Parts.Part_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Parts_Order_List because Parts does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Service_Bookings ON Service_Bookings FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Service_Bookings */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Service_Bookings  Parts_Order_List on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00048dda", PARENT_OWNER="", PARENT_TABLE="Service_Bookings"
    CHILD_OWNER="", CHILD_TABLE="Parts_Order_List"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="Booking_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Parts_Order_List
      WHERE
        /*  %JoinFKPK(Parts_Order_List,deleted," = "," AND") */
        Parts_Order_List.Booking_Id = deleted.Booking_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Service_Bookings because Parts_Order_List exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Service_Bookings  Mechanic_on_Services on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Service_Bookings"
    CHILD_OWNER="", CHILD_TABLE="Mechanic_on_Services"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="Booking_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Mechanic_on_Services
      WHERE
        /*  %JoinFKPK(Mechanic_on_Services,deleted," = "," AND") */
        Mechanic_on_Services.Booking_Id = deleted.Booking_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Service_Bookings because Mechanic_on_Services exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Cars  Service_Bookings on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Service_Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="Car_Id" */
    IF EXISTS (SELECT * FROM deleted,Cars
      WHERE
        /* %JoinFKPK(deleted,Cars," = "," AND") */
        deleted.Car_Id = Cars.Car_Id AND
        NOT EXISTS (
          SELECT * FROM Service_Bookings
          WHERE
            /* %JoinFKPK(Service_Bookings,Cars," = "," AND") */
            Service_Bookings.Car_Id = Cars.Car_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Service_Bookings because Cars exists.'
      GOTO ERROR
    END

    /* ERwin Builtin Trigger */
    /* Contacts  Service_Bookings on child delete no action */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contacts"
    CHILD_OWNER="", CHILD_TABLE="Service_Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="Contact_Id" */
    IF EXISTS (SELECT * FROM deleted,Contacts
      WHERE
        /* %JoinFKPK(deleted,Contacts," = "," AND") */
        deleted.Contact_Id = Contacts.Contact_Id AND
        NOT EXISTS (
          SELECT * FROM Service_Bookings
          WHERE
            /* %JoinFKPK(Service_Bookings,Contacts," = "," AND") */
            Service_Bookings.Contact_Id = Contacts.Contact_Id
        )
    )
    BEGIN
      SELECT @errno  = 30010,
             @errmsg = 'Cannot delete last Service_Bookings because Contacts exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Service_Bookings ON Service_Bookings FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Service_Bookings */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insBooking_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Service_Bookings  Parts_Order_List on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00054552", PARENT_OWNER="", PARENT_TABLE="Service_Bookings"
    CHILD_OWNER="", CHILD_TABLE="Parts_Order_List"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_31", FK_COLUMNS="Booking_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Booking_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Parts_Order_List
      WHERE
        /*  %JoinFKPK(Parts_Order_List,deleted," = "," AND") */
        Parts_Order_List.Booking_Id = deleted.Booking_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Service_Bookings because Parts_Order_List exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Service_Bookings  Mechanic_on_Services on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Service_Bookings"
    CHILD_OWNER="", CHILD_TABLE="Mechanic_on_Services"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="Booking_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Booking_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Mechanic_on_Services
      WHERE
        /*  %JoinFKPK(Mechanic_on_Services,deleted," = "," AND") */
        Mechanic_on_Services.Booking_Id = deleted.Booking_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Service_Bookings because Mechanic_on_Services exists.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Cars  Service_Bookings on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Cars"
    CHILD_OWNER="", CHILD_TABLE="Service_Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="Car_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Car_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Cars
        WHERE
          /* %JoinFKPK(inserted,Cars) */
          inserted.Car_Id = Cars.Car_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Car_Id IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Service_Bookings because Cars does not exist.'
      GOTO ERROR
    END
  END

  /* ERwin Builtin Trigger */
  /* Contacts  Service_Bookings on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Contacts"
    CHILD_OWNER="", CHILD_TABLE="Service_Bookings"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_30", FK_COLUMNS="Contact_Id" */
  IF
    /* %ChildFK(" OR",UPDATE) */
    UPDATE(Contact_Id)
  BEGIN
    SELECT @nullcnt = 0
    SELECT @validcnt = count(*)
      FROM inserted,Contacts
        WHERE
          /* %JoinFKPK(inserted,Contacts) */
          inserted.Contact_Id = Contacts.Contact_Id
    /* %NotnullFK(inserted," IS NULL","select @nullcnt = count(*) from inserted where"," AND") */
    select @nullcnt = count(*) from inserted where
      inserted.Contact_Id IS NULL
    IF @validcnt + @nullcnt != @NUMROWS
    BEGIN
      SELECT @errno  = 30007,
             @errmsg = 'Cannot update Service_Bookings because Contacts does not exist.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Suppliers ON Suppliers FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Suppliers */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Suppliers  Parts on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000f307", PARENT_OWNER="", PARENT_TABLE="Suppliers"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="Supplier_Id" */
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Supplier_Id = deleted.Supplier_Id
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Suppliers because Parts exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Suppliers ON Suppliers FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Suppliers */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insSupplier_Id char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Suppliers  Parts on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="000106bc", PARENT_OWNER="", PARENT_TABLE="Suppliers"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="Supplier_Id" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Supplier_Id)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Parts
      WHERE
        /*  %JoinFKPK(Parts,deleted," = "," AND") */
        Parts.Supplier_Id = deleted.Supplier_Id
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Suppliers because Parts exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go




CREATE TRIGGER tD_Vehicle_Categories ON Vehicle_Categories FOR DELETE AS
/* ERwin Builtin Trigger */
/* DELETE trigger on Vehicle_Categories */
BEGIN
  DECLARE  @errno   int,
           @errmsg  varchar(255)
    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Cars on parent delete no action */
    /* ERWIN_RELATION:CHECKSUM="0000f98a", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="Vehicle_Catagory_Code" */
    IF EXISTS (
      SELECT * FROM deleted,Cars
      WHERE
        /*  %JoinFKPK(Cars,deleted," = "," AND") */
        Cars.Vehicle_Catagory_Code = deleted.Vehicle_Catagory_Code
    )
    BEGIN
      SELECT @errno  = 30001,
             @errmsg = 'Cannot delete Vehicle_Categories because Cars exists.'
      GOTO ERROR
    END


    /* ERwin Builtin Trigger */
    RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go


CREATE TRIGGER tU_Vehicle_Categories ON Vehicle_Categories FOR UPDATE AS
/* ERwin Builtin Trigger */
/* UPDATE trigger on Vehicle_Categories */
BEGIN
  DECLARE  @NUMROWS int,
           @nullcnt int,
           @validcnt int,
           @insVehicle_Catagory_Code char(18),
           @errno   int,
           @errmsg  varchar(255)

  SELECT @NUMROWS = @@rowcount
  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Cars on parent update no action */
  /* ERWIN_RELATION:CHECKSUM="00011821", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Cars"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="Vehicle_Catagory_Code" */
  IF
    /* %ParentPK(" OR",UPDATE) */
    UPDATE(Vehicle_Catagory_Code)
  BEGIN
    IF EXISTS (
      SELECT * FROM deleted,Cars
      WHERE
        /*  %JoinFKPK(Cars,deleted," = "," AND") */
        Cars.Vehicle_Catagory_Code = deleted.Vehicle_Catagory_Code
    )
    BEGIN
      SELECT @errno  = 30005,
             @errmsg = 'Cannot update Vehicle_Categories because Cars exists.'
      GOTO ERROR
    END
  END


  /* ERwin Builtin Trigger */
  RETURN
ERROR:
    raiserror @errno @errmsg
    rollback transaction
END

go
