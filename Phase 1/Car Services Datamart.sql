
CREATE TABLE Base_Fact_Table
( 
	day_id               integer  NOT NULL ,
	contact_id           integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT XPKBase_Fact_Table PRIMARY KEY  CLUSTERED (day_id ASC,contact_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE Car
( 
	licence_number       varchar(20)  NOT NULL ,
	current_milage       integer  NULL ,
	engine_size          varchar(20)  NULL ,
	other_car_details    varchar(20)  NULL 
)
go



ALTER TABLE Car
	ADD CONSTRAINT XPKCar PRIMARY KEY  CLUSTERED (licence_number ASC)
go



CREATE TABLE City_Agg_Fact
( 
	day_id               integer  NOT NULL ,
	city_id              integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT XPKCity_Agg_Fact PRIMARY KEY  CLUSTERED (day_id ASC,city_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE City_Dim
( 
	city_id              integer  NOT NULL ,
	city_description     varchar(20)  NULL ,
	province_id          integer  NOT NULL 
)
go



ALTER TABLE City_Dim
	ADD CONSTRAINT XPKCity_Dim PRIMARY KEY  CLUSTERED (city_id ASC)
go



CREATE TABLE Country_Agg_Fact
( 
	day_id               integer  NOT NULL ,
	country_id           integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20) NULL 
)
go



ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT XPKCountry_Agg_Fact PRIMARY KEY  CLUSTERED (day_id ASC,country_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE Country_Dim
( 
	country_id           integer  NOT NULL ,
	country_description  varchar(20)  NULL 
)
go



ALTER TABLE Country_Dim
	ADD CONSTRAINT XPKCountry_Dim PRIMARY KEY  CLUSTERED (country_id ASC)
go



CREATE TABLE Country_Year_Agg_Fact
( 
	year_id              integer  NOT NULL ,
	country_id           integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT XPKCountry_Year_Agg_Fact PRIMARY KEY  CLUSTERED (year_id ASC,country_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE Customer_Dim
( 
	contact_id           integer  NOT NULL ,
	first_name           varchar(20)  NULL ,
	middle_name          varchar(20)  NULL ,
	last_name            varchar(20)  NULL ,
	gender               varchar(1)  NULL ,
	email_address        varchar(20)  NULL ,
	phone_number         integer  NULL ,
	#address             varchar(20)  NULL ,
	marital_status       varchar(20)  NULL ,
	town_id              integer NOT NULL 
)
go



ALTER TABLE Customer_Dim
	ADD CONSTRAINT XPKCustomer_Dim PRIMARY KEY  CLUSTERED (contact_id ASC)
go



CREATE TABLE Day
( 
	day_id               integer  NOT NULL ,
	day_description      varchar(20)  NULL ,
	week_id              integer NOT NULL 
)
go



ALTER TABLE Day
	ADD CONSTRAINT XPKDay PRIMARY KEY  CLUSTERED (day_id ASC)
go



CREATE TABLE Defect
( 
	defect_id            integer  NOT NULL ,
	defect_description   varchar(20)  NULL ,
	other_details        varchar(20)  NULL 
)
go



ALTER TABLE Defect
	ADD CONSTRAINT XPKDefect PRIMARY KEY  CLUSTERED (defect_id ASC)
go



CREATE TABLE Manufactures
( 
	manufacture_code     integer  NOT NULL ,
	manufacture_name     varchar(20)  NULL ,
	manufacture_detail   varchar(20)  NULL 
)
go



ALTER TABLE Manufactures
	ADD CONSTRAINT XPKManufactures PRIMARY KEY  CLUSTERED (manufacture_code ASC)
go



CREATE TABLE Mechanic
( 
	mechanic_id          integer  NOT NULL ,
	mechanic_name        varchar(20)  NULL ,
	mechanic_details     varchar(20)  NULL 
)
go



ALTER TABLE Mechanic
	ADD CONSTRAINT XPKMechanic PRIMARY KEY  CLUSTERED (mechanic_id ASC)
go



CREATE TABLE Model
( 
	model_code           integer  NOT NULL ,
	model_name           varchar(20)  NULL ,
	model_year           integer  NULL 
)
go



ALTER TABLE Model
	ADD CONSTRAINT XPKModel PRIMARY KEY  CLUSTERED (model_code ASC)
go



CREATE TABLE Month
( 
	month_id             integer  NOT NULL ,
	month_description    varchar(20)  NULL ,
	quarter_id           integer  NOT NULL 
)
go



ALTER TABLE Month
	ADD CONSTRAINT XPKMonth PRIMARY KEY  CLUSTERED (month_id ASC)
go



CREATE TABLE Month_Agg_Fact
( 
	month_id             integer  NOT NULL ,
	contact_id           integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT XPKMonth_Agg_Fact PRIMARY KEY  CLUSTERED (month_id ASC,contact_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE Parts
( 
	part_id              integer  NOT NULL ,
	part_name            varchar(20)  NULL ,
	part_description     varchar(20)  NULL ,
	number_in_stock      varchar(20)  NULL ,
	other_details        varchar(20)  NULL 
)
go



ALTER TABLE Parts
	ADD CONSTRAINT XPKParts PRIMARY KEY  CLUSTERED (part_id ASC)
go



CREATE TABLE Province_Agg_Fact
( 
	day_id               integer  NOT NULL ,
	province_id          integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT XPKProvince_Agg_Fact PRIMARY KEY  CLUSTERED (day_id ASC,province_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE Province_Dim
( 
	province_id          integer  NOT NULL ,
	province_description varchar(20) NULL ,
	country_id           integer  NOT NULL 
)
go



ALTER TABLE Province_Dim
	ADD CONSTRAINT XPKProvince_Dim PRIMARY KEY  CLUSTERED (province_id ASC)
go



CREATE TABLE Quarter
( 
	quarter_id           integer  NOT NULL ,
	quarter_description  varchar(20)  NULL ,
	year_id              integer  NOT NULL 
)
go



ALTER TABLE Quarter
	ADD CONSTRAINT XPKQuarter PRIMARY KEY  CLUSTERED (quarter_id ASC)
go



CREATE TABLE Quater_Agg_Fact
( 
	quarter_id           integer  NOT NULL ,
	contact_id           integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT XPKQuater_Agg_Fact PRIMARY KEY  CLUSTERED (quarter_id ASC,contact_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE Service_Booking
( 
	Booking_Id           integer  NOT NULL ,
	Date_of_Booking      datetime  NULL ,
	Booking_Details      varchar(20)  NULL ,
	contact_id           integer  NULL ,
	licence_number       varchar(20)  NULL 
)
go



ALTER TABLE Service_Booking
	ADD CONSTRAINT XPKService_Booking PRIMARY KEY  CLUSTERED (Booking_Id ASC)
go



CREATE TABLE Town__Dim
( 
	town_id              integer  NOT NULL ,
	town_description     varchar(20)  NULL ,
	city_id              integer  NOT NULL 
)
go



ALTER TABLE Town__Dim
	ADD CONSTRAINT XPKTown__Dim PRIMARY KEY  CLUSTERED (town_id ASC)
go



CREATE TABLE Town_Agg_Fact
( 
	day_id               integer  NOT NULL ,
	town_id              integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT XPKTown_Agg_Fact PRIMARY KEY  CLUSTERED (day_id ASC,town_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE Town_Week_Agg_Fact
( 
	town_id              integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	week_id              integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT XPKTown_Week_Agg_Fact PRIMARY KEY  CLUSTERED (town_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC,week_id ASC)
go



CREATE TABLE Week
( 
	week_id              integer  NOT NULL ,
	week_description     varchar(20)  NULL ,
	month_id             integer  NOT NULL 
)
go



ALTER TABLE Week
	ADD CONSTRAINT XPKWeek PRIMARY KEY  CLUSTERED (week_id ASC)
go



CREATE TABLE Week_Agg_Fact
( 
	week_id              integer  NOT NULL ,
	contact_id           integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT XPKWeek_Agg_Fact PRIMARY KEY  CLUSTERED (week_id ASC,contact_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go



CREATE TABLE Year
( 
	year_id              integer  NOT NULL ,
	year_description     integer  NULL 
)
go



ALTER TABLE Year
	ADD CONSTRAINT XPKYear PRIMARY KEY  CLUSTERED (year_id ASC)
go



CREATE TABLE Year_Agg_Fact
( 
	year_id              integer  NOT NULL ,
	contact_id           integer  NOT NULL ,
	part_id              integer  NOT NULL ,
	defect_id            integer  NOT NULL ,
	licence_number       varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacture_code     integer  NOT NULL ,
	mechanic_id          integer  NOT NULL ,
	Booking_Id           integer  NOT NULL ,
	amount               integer  NULL ,
	cost                 integer  NULL ,
	defects              varchar(20)  NULL ,
	parts                varchar(20)  NULL 
)
go



ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT XPKYear_Agg_Fact PRIMARY KEY  CLUSTERED (year_id ASC,contact_id ASC,part_id ASC,defect_id ASC,licence_number ASC,model_code ASC,manufacture_code ASC,mechanic_id ASC,Booking_Id ASC)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_9 FOREIGN KEY (day_id) REFERENCES Day(day_id)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_10 FOREIGN KEY (contact_id) REFERENCES Customer_Dim(contact_id)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_11 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_12 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_13 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_14 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_15 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_16 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_81 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_39 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_42 FOREIGN KEY (day_id) REFERENCES Day(day_id)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_43 FOREIGN KEY (city_id) REFERENCES City_Dim(city_id)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_44 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_45 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_46 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_85 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE City_Dim
	ADD CONSTRAINT R_7 FOREIGN KEY (province_id) REFERENCES Province_Dim(province_id)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_71 FOREIGN KEY (day_id) REFERENCES Day(day_id)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_72 FOREIGN KEY (country_id) REFERENCES Country_Dim(country_id)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_73 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_74 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_75 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_76 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_77 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_78 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_89 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT R_100 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT R_101 FOREIGN KEY (year_id) REFERENCES Year(year_id)
go




ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT R_102 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT R_103 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT R_104 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT R_105 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT R_106 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Country_Year_Agg_Fact
	ADD CONSTRAINT R_107 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Customer_Dim
	ADD CONSTRAINT R_5 FOREIGN KEY (town_id) REFERENCES Town__Dim(town_id)
go




ALTER TABLE Day
	ADD CONSTRAINT R_1 FOREIGN KEY (week_id) REFERENCES Week(week_id)
go




ALTER TABLE Month
	ADD CONSTRAINT R_3 FOREIGN KEY (quarter_id) REFERENCES Quarter(quarter_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_25 FOREIGN KEY (month_id) REFERENCES Month(month_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_26 FOREIGN KEY (contact_id) REFERENCES Customer_Dim(contact_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_27 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_28 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_29 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_30 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_31 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_32 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_83 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_63 FOREIGN KEY (day_id) REFERENCES Day(day_id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_64 FOREIGN KEY (province_id) REFERENCES Province_Dim(province_id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_65 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_66 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_67 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_68 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_69 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_70 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_88 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE Province_Dim
	ADD CONSTRAINT R_8 FOREIGN KEY (country_id) REFERENCES Country_Dim(country_id)
go




ALTER TABLE Quarter
	ADD CONSTRAINT R_4 FOREIGN KEY (year_id) REFERENCES Year(year_id)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_47 FOREIGN KEY (quarter_id) REFERENCES Quarter(quarter_id)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_48 FOREIGN KEY (contact_id) REFERENCES Customer_Dim(contact_id)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_49 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_50 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_51 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_52 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_53 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_54 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_86 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE Service_Booking
	ADD CONSTRAINT R_79 FOREIGN KEY (contact_id) REFERENCES Customer_Dim(contact_id)
		ON DELETE SET NULL
		ON UPDATE SET NULL
go




ALTER TABLE Service_Booking
	ADD CONSTRAINT R_80 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
		ON DELETE SET NULL
		ON UPDATE SET NULL
go




ALTER TABLE Town__Dim
	ADD CONSTRAINT R_6 FOREIGN KEY (city_id) REFERENCES City_Dim(city_id)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_33 FOREIGN KEY (day_id) REFERENCES Day(day_id)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_34 FOREIGN KEY (town_id) REFERENCES Town__Dim(town_id)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_35 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_36 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_37 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_38 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_40 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_41 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_84 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_91 FOREIGN KEY (week_id) REFERENCES Week(week_id)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_92 FOREIGN KEY (town_id) REFERENCES Town__Dim(town_id)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_93 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_94 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_95 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_96 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_97 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_98 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Town_Week_Agg_Fact
	ADD CONSTRAINT R_99 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE Week
	ADD CONSTRAINT R_2 FOREIGN KEY (month_id) REFERENCES Month(month_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_17 FOREIGN KEY (week_id) REFERENCES Week(week_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_18 FOREIGN KEY (contact_id) REFERENCES Customer_Dim(contact_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_19 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_20 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_21 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_22 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_23 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_24 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_82 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_55 FOREIGN KEY (year_id) REFERENCES Year(year_id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_56 FOREIGN KEY (contact_id) REFERENCES Customer_Dim(contact_id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_57 FOREIGN KEY (part_id) REFERENCES Parts(part_id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_58 FOREIGN KEY (defect_id) REFERENCES Defect(defect_id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_59 FOREIGN KEY (licence_number) REFERENCES Car(licence_number)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_60 FOREIGN KEY (manufacture_code) REFERENCES Manufactures(manufacture_code)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_61 FOREIGN KEY (mechanic_id) REFERENCES Mechanic(mechanic_id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_62 FOREIGN KEY (model_code) REFERENCES Model(model_code)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_87 FOREIGN KEY (Booking_Id) REFERENCES Service_Booking(Booking_Id)
go

