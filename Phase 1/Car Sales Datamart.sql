
CREATE TABLE Base_Fact_Table
( 
	day_id               integer  NOT NULL ,
	customer_id          integer  NOT NULL ,
	car_feature_id       integer  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT XPKBase_Fact_Table PRIMARY KEY  CLUSTERED (day_id ASC,customer_id ASC,car_feature_id ASC,model_code ASC,manufacturer_ShortName ASC,vehicle_category_code ASC)
go



CREATE TABLE Car_Features
( 
	car_feature_id       integer  NOT NULL ,
	car_feature_description varchar(20)  NULL 
)
go



ALTER TABLE Car_Features
	ADD CONSTRAINT XPKCar_Features PRIMARY KEY  CLUSTERED (car_feature_id ASC)
go



CREATE TABLE Car_for_Sale
( 
	car_for_sale_id      integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	asking_price         integer  NULL ,
	current_millage      integer  NULL ,
	date_aquired         datetime  NULL ,
	registration_year    integer  NULL ,
	other_car_details    varchar(20)  NULL 
)
go



ALTER TABLE Car_for_Sale
	ADD CONSTRAINT XPKCar_for_Sale PRIMARY KEY  CLUSTERED (car_for_sale_id ASC)
go



CREATE TABLE Car_Manufacturer
( 
	manufacturer_ShortName varchar(20)  NOT NULL ,
	Manufacturer_FullName varchar(20)  NULL ,
	other_details        varchar(20)  NULL 
)
go



ALTER TABLE Car_Manufacturer
	ADD CONSTRAINT XPKCar_Manufacturer PRIMARY KEY  CLUSTERED (manufacturer_ShortName ASC)
go



CREATE TABLE Car_Models
( 
	model_code           integer  NOT NULL ,
	manufacturer_code    varchar(20)  NOT NULL ,
	model_name           varchar(20)  NULL 
)
go



ALTER TABLE Car_Models
	ADD CONSTRAINT XPKCar_Models PRIMARY KEY  CLUSTERED (model_code ASC)
go



CREATE TABLE Cars_Sold
( 
	car_sold_id          integer  NOT NULL ,
	car_for_sale_id      integer  NOT NULL ,
	customer_id          integer  NOT NULL ,
	agreed_price         integer  NULL ,
	date_sold            datetime  NULL ,
	other_details        varchar(20)  NULL 
)
go



ALTER TABLE Cars_Sold
	ADD CONSTRAINT XPKCars_Sold PRIMARY KEY  CLUSTERED (car_sold_id ASC)
go



CREATE TABLE City_Agg_Fact
( 
	day_id               integer  NOT NULL ,
	city_id              integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	model_code           integer  NOT NULL ,
	car_feature_id       integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT XPKCity_Agg_Fact PRIMARY KEY  CLUSTERED (day_id ASC,city_id ASC,manufacturer_ShortName ASC,vehicle_category_code ASC,model_code ASC,car_feature_id ASC)
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
	car_feature_id       integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT XPKCountry_Agg_Fact PRIMARY KEY  CLUSTERED (day_id ASC,country_id ASC,car_feature_id ASC,manufacturer_ShortName ASC,model_code ASC,vehicle_category_code ASC)
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



CREATE TABLE Customer
( 
	customer_id          integer  NOT NULL ,
	first_name           varchar(20)  NULL ,
	middle_name          varchar(20)  NULL ,
	last_name            varchar(20)  NULL ,
	gender               varchar(1)  NULL ,
	email_address        varchar(20)  NULL ,
	phone_number         varchar(20)  NULL ,
	address_line_1       varchar(20)  NULL ,
	address_line_2       varchar(20)  NULL ,
	address_line_3       varchar(20)  NULL ,
	address_line_4       varchar(20)  NULL ,
	town_id              integer  NOT NULL ,
	city_id              integer  NULL ,
	#state                varchar(20)  NULL ,
	county               varchar(20)  NULL ,
	province_id          integer  NULL ,
	country_id           integer  NULL ,
	postal_code          integer  NULL ,
	other_details        varchar(20)  NULL 
)
go



ALTER TABLE Customer
	ADD CONSTRAINT XPKCustomer PRIMARY KEY  CLUSTERED (customer_id ASC)
go



CREATE TABLE Customer_Preferences
( 
	customer_preference_id integer  NOT NULL ,
	car_feature_id       integer  NOT NULL ,
	customer_id          integer  NOT NULL ,
	customer_preference_details char(18)  NULL 
)
go



ALTER TABLE Customer_Preferences
	ADD CONSTRAINT XPKCustomer_Preferences PRIMARY KEY  CLUSTERED (customer_preference_id ASC)
go



CREATE TABLE Day
( 
	day_id               integer  NOT NULL ,
	day_description      varchar(20)  NULL ,
	week_id              integer  NOT NULL 
)
go



ALTER TABLE Day
	ADD CONSTRAINT XPKDay PRIMARY KEY  CLUSTERED (day_id ASC)
go



CREATE TABLE features_on_Car_for_Sale
( 
	car_for_sale_id      integer  NOT NULL ,
	car_feature_id       integer  NOT NULL 
)
go



ALTER TABLE features_on_Car_for_Sale
	ADD CONSTRAINT XPKfeatures_on_Car_for_Sale PRIMARY KEY  CLUSTERED (car_for_sale_id ASC,car_feature_id ASC)
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
	customer_id          integer  NOT NULL ,
	car_feature_id       integer  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT XPKMonth_Agg_Fact PRIMARY KEY  CLUSTERED (month_id ASC,customer_id ASC,car_feature_id ASC,model_code ASC,manufacturer_ShortName ASC,vehicle_category_code ASC)
go



CREATE TABLE Province_Agg_Fact
( 
	day_id               integer  NOT NULL ,
	province_id          integer  NOT NULL ,
	car_feature_id       integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT XPKProvince_Agg_Fact PRIMARY KEY  CLUSTERED (day_id ASC,province_id ASC,car_feature_id ASC,manufacturer_ShortName ASC,model_code ASC,vehicle_category_code ASC)
go



CREATE TABLE Province_Dim
( 
	province_id          integer  NOT NULL ,
	province_description varchar(20)  NULL ,
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
	customer_id          integer  NOT NULL ,
	car_feature_id       integer  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT XPKQuater_Agg_Fact PRIMARY KEY  CLUSTERED (quarter_id ASC,customer_id ASC,car_feature_id ASC,model_code ASC,manufacturer_ShortName ASC,vehicle_category_code ASC)
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
	car_feature_id       integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	model_code           integer  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT XPKTown_Agg_Fact PRIMARY KEY  CLUSTERED (day_id ASC,town_id ASC,car_feature_id ASC,manufacturer_ShortName ASC,model_code ASC,vehicle_category_code ASC)
go



CREATE TABLE Vehicle_Categories
( 
	vehicle_category_code integer  NOT NULL ,
	vehicle_category_description varchar(20)  NULL 
)
go



ALTER TABLE Vehicle_Categories
	ADD CONSTRAINT XPKVehicle_Categories PRIMARY KEY  CLUSTERED (vehicle_category_code ASC)
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
	customer_id          integer  NOT NULL ,
	car_feature_id       integer  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT XPKWeek_Agg_Fact PRIMARY KEY  CLUSTERED (week_id ASC,customer_id ASC,car_feature_id ASC,model_code ASC,manufacturer_ShortName ASC,vehicle_category_code ASC)
go



CREATE TABLE Year
( 
	year_id              integer  NOT NULL ,
	year_description     varchar(20)  NULL 
)
go



ALTER TABLE Year
	ADD CONSTRAINT XPKYear PRIMARY KEY  CLUSTERED (year_id ASC)
go



CREATE TABLE Year_Agg_Fact
( 
	year_id              integer  NOT NULL ,
	customer_id          integer  NOT NULL ,
	car_feature_id       integer  NOT NULL ,
	model_code           integer  NOT NULL ,
	manufacturer_ShortName varchar(20)  NOT NULL ,
	vehicle_category_code integer  NOT NULL ,
	cars_sold_count      integer  NULL ,
	average_asking_price integer  NULL ,
	total_price          integer  NULL ,
	average_car_mileage  integer  NULL 
)
go



ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT XPKYear_Agg_Fact PRIMARY KEY  CLUSTERED (year_id ASC,customer_id ASC,car_feature_id ASC,model_code ASC,manufacturer_ShortName ASC,vehicle_category_code ASC)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_9 FOREIGN KEY (day_id) REFERENCES Day(day_id)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_10 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_11 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_12 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_13 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Base_Fact_Table
	ADD CONSTRAINT R_93 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go




ALTER TABLE Car_for_Sale
	ADD CONSTRAINT R_85 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Car_for_Sale
	ADD CONSTRAINT R_86 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Car_for_Sale
	ADD CONSTRAINT R_87 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go




ALTER TABLE Car_Models
	ADD CONSTRAINT R_106 FOREIGN KEY (manufacturer_code) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Cars_Sold
	ADD CONSTRAINT R_90 FOREIGN KEY (car_for_sale_id) REFERENCES Car_for_Sale(car_for_sale_id)
go




ALTER TABLE Cars_Sold
	ADD CONSTRAINT R_91 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_39 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_42 FOREIGN KEY (day_id) REFERENCES Day(day_id)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_43 FOREIGN KEY (city_id) REFERENCES City_Dim(city_id)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_100 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_103 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE City_Agg_Fact
	ADD CONSTRAINT R_104 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
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
	ADD CONSTRAINT R_73 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_74 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_75 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Country_Agg_Fact
	ADD CONSTRAINT R_102 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go




ALTER TABLE Customer
	ADD CONSTRAINT R_105 FOREIGN KEY (town_id) REFERENCES Town__Dim(town_id)
go




ALTER TABLE Customer_Preferences
	ADD CONSTRAINT R_79 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Customer_Preferences
	ADD CONSTRAINT R_80 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
go




ALTER TABLE Day
	ADD CONSTRAINT R_1 FOREIGN KEY (week_id) REFERENCES Week(week_id)
go




ALTER TABLE features_on_Car_for_Sale
	ADD CONSTRAINT R_88 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE features_on_Car_for_Sale
	ADD CONSTRAINT R_89 FOREIGN KEY (car_for_sale_id) REFERENCES Car_for_Sale(car_for_sale_id)
go




ALTER TABLE Month
	ADD CONSTRAINT R_3 FOREIGN KEY (quarter_id) REFERENCES Quarter(quarter_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_25 FOREIGN KEY (month_id) REFERENCES Month(month_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_26 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_27 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_28 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_29 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Month_Agg_Fact
	ADD CONSTRAINT R_95 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_63 FOREIGN KEY (day_id) REFERENCES Day(day_id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_64 FOREIGN KEY (province_id) REFERENCES Province_Dim(province_id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_65 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_66 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_67 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Province_Agg_Fact
	ADD CONSTRAINT R_101 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
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
	ADD CONSTRAINT R_48 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_49 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_50 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_51 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_96 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go




ALTER TABLE Quater_Agg_Fact
	ADD CONSTRAINT R_97 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
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
	ADD CONSTRAINT R_35 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_36 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_37 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Town_Agg_Fact
	ADD CONSTRAINT R_99 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go




ALTER TABLE Week
	ADD CONSTRAINT R_2 FOREIGN KEY (month_id) REFERENCES Month(month_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_17 FOREIGN KEY (week_id) REFERENCES Week(week_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_18 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_19 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_20 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_21 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Week_Agg_Fact
	ADD CONSTRAINT R_94 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_55 FOREIGN KEY (year_id) REFERENCES Year(year_id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_56 FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_57 FOREIGN KEY (car_feature_id) REFERENCES Car_Features(car_feature_id)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_58 FOREIGN KEY (model_code) REFERENCES Car_Models(model_code)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_59 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer(manufacturer_ShortName)
go




ALTER TABLE Year_Agg_Fact
	ADD CONSTRAINT R_98 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories(vehicle_category_code)
go


