
CREATE TABLE Car
(
	licence_number       CHAR(18) NULL ,
	current_milage       CHAR(18) NULL ,
	engine_size          CHAR(18) NULL ,
	other_car_details    CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	car_year_of_manufacture CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKCar ON Car
(car_id   ASC);



ALTER TABLE Car
	ADD CONSTRAINT  XPKCar PRIMARY KEY (car_id);



CREATE TABLE Car_Features
(
	car_feature_id       INTEGER NOT NULL ,
	car_feature_description VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKCar_Features ON Car_Features
(car_feature_id   ASC);



ALTER TABLE Car_Features
	ADD CONSTRAINT  XPKCar_Features PRIMARY KEY (car_feature_id);



CREATE TABLE Car_for_Sale
(
	car_for_sale_id      INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	model_code           INTEGER NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	asking_price         INTEGER NULL ,
	current_millage      INTEGER NULL ,
	date_aquired         DATE NULL ,
	registration_year    INTEGER NULL ,
	other_car_details    VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKCar_for_Sale ON Car_for_Sale
(car_for_sale_id   ASC);



ALTER TABLE Car_for_Sale
	ADD CONSTRAINT  XPKCar_for_Sale PRIMARY KEY (car_for_sale_id);



CREATE TABLE Car_Manufacturer
(
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	Manufacturer_FullName VARCHAR2(20) NULL ,
	other_details        VARCHAR2(20) NULL ,
	Manufacturer_Name    CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKCar_Manufacturer ON Car_Manufacturer
(manufacturer_ShortName   ASC);



ALTER TABLE Car_Manufacturer
	ADD CONSTRAINT  XPKCar_Manufacturer PRIMARY KEY (manufacturer_ShortName);



CREATE TABLE Car_Models
(
	model_code           INTEGER NOT NULL ,
	manufacturer_code    VARCHAR2(20) NOT NULL ,
	model_name           VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKCar_Models ON Car_Models
(model_code   ASC);



ALTER TABLE Car_Models
	ADD CONSTRAINT  XPKCar_Models PRIMARY KEY (model_code);



CREATE TABLE Car_Parts_Base_Fact_Table
(
	part_id              CHAR(18) NOT NULL ,
	day_id               CHAR(18) NOT NULL ,
	supplier_id          CHAR(18) NOT NULL ,
	pManufacturer_code   CHAR(18) NOT NULL ,
	car_id               CHAR(18) NOT NULL ,
	quantity             CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	profit               CHAR(18) NULL ,
	model_code           INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Parts_Base_Fact_Table ON Car_Parts_Base_Fact_Table
(part_id   ASC,day_id   ASC,supplier_id   ASC,pManufacturer_code   ASC,car_id   ASC,manufacturer_ShortName   ASC,model_code   ASC);



ALTER TABLE Car_Parts_Base_Fact_Table
	ADD CONSTRAINT  XPKCar_Parts_Base_Fact_Table PRIMARY KEY (part_id,day_id,supplier_id,pManufacturer_code,car_id,manufacturer_ShortName,model_code);



CREATE TABLE Car_Parts_Month_Agg_Fact
(
	month_id             CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	supplier_id          CHAR(18) NOT NULL ,
	pManufacturer_code   CHAR(18) NOT NULL ,
	car_id               CHAR(18) NOT NULL ,
	quantity             CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	profit               CHAR(18) NULL ,
	model_code           INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Parts_Month_Agg_Fact ON Car_Parts_Month_Agg_Fact
(month_id   ASC,part_id   ASC,supplier_id   ASC,pManufacturer_code   ASC,car_id   ASC,manufacturer_ShortName   ASC,model_code   ASC);



ALTER TABLE Car_Parts_Month_Agg_Fact
	ADD CONSTRAINT  XPKCar_Parts_Month_Agg_Fact PRIMARY KEY (month_id,part_id,supplier_id,pManufacturer_code,car_id,manufacturer_ShortName,model_code);



CREATE TABLE Car_Parts_Quater_Agg_Fact
(
	quarter_id           CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	supplier_id          CHAR(18) NOT NULL ,
	pManufacturer_code   CHAR(18) NOT NULL ,
	car_id               CHAR(18) NOT NULL ,
	quantity             CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	profit               CHAR(18) NULL ,
	model_code           INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Parts_Quater_Agg_Fact ON Car_Parts_Quater_Agg_Fact
(quarter_id   ASC,part_id   ASC,supplier_id   ASC,pManufacturer_code   ASC,car_id   ASC,manufacturer_ShortName   ASC,model_code   ASC);



ALTER TABLE Car_Parts_Quater_Agg_Fact
	ADD CONSTRAINT  XPKCar_Parts_Quater_Agg_Fact PRIMARY KEY (quarter_id,part_id,supplier_id,pManufacturer_code,car_id,manufacturer_ShortName,model_code);



CREATE TABLE Car_Parts_Week_Agg_Fact
(
	part_id              CHAR(18) NOT NULL ,
	week_id              CHAR(18) NOT NULL ,
	supplier_id          CHAR(18) NOT NULL ,
	pManufacturer_code   CHAR(18) NOT NULL ,
	car_id               CHAR(18) NOT NULL ,
	quantity             CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	profit               CHAR(18) NULL ,
	model_code           INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Parts_Week_Agg_Fact ON Car_Parts_Week_Agg_Fact
(week_id   ASC,part_id   ASC,supplier_id   ASC,pManufacturer_code   ASC,car_id   ASC,manufacturer_ShortName   ASC,model_code   ASC);



ALTER TABLE Car_Parts_Week_Agg_Fact
	ADD CONSTRAINT  XPKCar_Parts_Week_Agg_Fact PRIMARY KEY (week_id,part_id,supplier_id,pManufacturer_code,car_id,manufacturer_ShortName,model_code);



CREATE TABLE Car_Parts_Year_Agg_Fact
(
	year_id              CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	car_id               CHAR(18) NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	pManufacturer_code   CHAR(18) NOT NULL ,
	supplier_id          CHAR(18) NOT NULL ,
	quantity             CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	profit               CHAR(18) NULL ,
	model_code           INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Parts_Year_Agg_Fact ON Car_Parts_Year_Agg_Fact
(year_id   ASC,part_id   ASC,manufacturer_ShortName   ASC,car_id   ASC,pManufacturer_code   ASC,supplier_id   ASC,model_code   ASC);



ALTER TABLE Car_Parts_Year_Agg_Fact
	ADD CONSTRAINT  XPKCar_Parts_Year_Agg_Fact PRIMARY KEY (year_id,part_id,manufacturer_ShortName,car_id,pManufacturer_code,supplier_id,model_code);



CREATE TABLE Car_Sales_Base_Fact_Table
(
	day_id               INTEGER NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_Base_Fact_Table ON Car_Sales_Base_Fact_Table
(day_id   ASC,customer_id   ASC,car_feature_id   ASC,model_code   ASC,manufacturer_ShortName   ASC,vehicle_category_code   ASC);



ALTER TABLE Car_Sales_Base_Fact_Table
	ADD CONSTRAINT  XPKCar_Sales_Base_Fact_Table PRIMARY KEY (day_id,customer_id,car_feature_id,model_code,manufacturer_ShortName,vehicle_category_code);



CREATE TABLE Car_Sales_City_Agg_Fact
(
	day_id               INTEGER NOT NULL ,
	city_id              INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_City_Agg_Fact ON Car_Sales_City_Agg_Fact
(manufacturer_ShortName   ASC,day_id   ASC,city_id   ASC,vehicle_category_code   ASC,model_code   ASC,car_feature_id   ASC);



ALTER TABLE Car_Sales_City_Agg_Fact
	ADD CONSTRAINT  XPKCar_Sales_City_Agg_Fact PRIMARY KEY (manufacturer_ShortName,day_id,city_id,vehicle_category_code,model_code,car_feature_id);



CREATE TABLE Car_Sales_Country_Agg_Fact
(
	day_id               INTEGER NOT NULL ,
	country_id           INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	model_code           INTEGER NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_Country_Agg_Fact ON Car_Sales_Country_Agg_Fact
(day_id   ASC,country_id   ASC,car_feature_id   ASC,model_code   ASC,manufacturer_ShortName   ASC,vehicle_category_code   ASC);



ALTER TABLE Car_Sales_Country_Agg_Fact
	ADD CONSTRAINT  XPKCar_Sales_Country_Agg_Fact PRIMARY KEY (day_id,country_id,car_feature_id,model_code,manufacturer_ShortName,vehicle_category_code);



CREATE TABLE Car_Sales_Month_Agg_Fact
(
	month_id             INTEGER NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_Month_Agg_Fact ON Car_Sales_Month_Agg_Fact
(month_id   ASC,customer_id   ASC,car_feature_id   ASC,model_code   ASC,manufacturer_ShortName   ASC,vehicle_category_code   ASC);



ALTER TABLE Car_Sales_Month_Agg_Fact
	ADD CONSTRAINT  XPKCar_Sales_Month_Agg_Fact PRIMARY KEY (month_id,customer_id,car_feature_id,model_code,manufacturer_ShortName,vehicle_category_code);



CREATE TABLE Car_Sales_Province_Agg_Fact
(
	day_id               INTEGER NOT NULL ,
	province_id          INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	model_code           INTEGER NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_Province_Agg_Fact ON Car_Sales_Province_Agg_Fact
(day_id   ASC,province_id   ASC,car_feature_id   ASC,model_code   ASC,manufacturer_ShortName   ASC,vehicle_category_code   ASC);



ALTER TABLE Car_Sales_Province_Agg_Fact
	ADD CONSTRAINT  XPKCar_Sales_Province_Agg_Fact PRIMARY KEY (day_id,province_id,car_feature_id,model_code,manufacturer_ShortName,vehicle_category_code);



CREATE TABLE Car_Sales_Quater_Agg_Fact
(
	quarter_id           INTEGER NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_Quater_Agg_Fact ON Car_Sales_Quater_Agg_Fact
(quarter_id   ASC,customer_id   ASC,car_feature_id   ASC,model_code   ASC,manufacturer_ShortName   ASC,vehicle_category_code   ASC);



ALTER TABLE Car_Sales_Quater_Agg_Fact
	ADD CONSTRAINT  XPKCar_Sales_Quater_Agg_Fact PRIMARY KEY (quarter_id,customer_id,car_feature_id,model_code,manufacturer_ShortName,vehicle_category_code);



CREATE TABLE Car_Sales_Town_Agg_Fact
(
	day_id               INTEGER NOT NULL ,
	town_id              INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	model_code           INTEGER NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_Town_Agg_Fact ON Car_Sales_Town_Agg_Fact
(day_id   ASC,town_id   ASC,car_feature_id   ASC,model_code   ASC,manufacturer_ShortName   ASC,vehicle_category_code   ASC);



ALTER TABLE Car_Sales_Town_Agg_Fact
	ADD CONSTRAINT  XPKCar_Sales_Town_Agg_Fact PRIMARY KEY (day_id,town_id,car_feature_id,model_code,manufacturer_ShortName,vehicle_category_code);



CREATE TABLE Car_Sales_Week_Agg_Fact
(
	week_id              INTEGER NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_Week_Agg_Fact ON Car_Sales_Week_Agg_Fact
(week_id   ASC,customer_id   ASC,car_feature_id   ASC,model_code   ASC,manufacturer_ShortName   ASC,vehicle_category_code   ASC);



ALTER TABLE Car_Sales_Week_Agg_Fact
	ADD CONSTRAINT  XPKCar_Sales_Week_Agg_Fact PRIMARY KEY (week_id,customer_id,car_feature_id,model_code,manufacturer_ShortName,vehicle_category_code);



CREATE TABLE Car_Sales_Year_Agg_Fact
(
	year_id              INTEGER NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL ,
	vehicle_category_code INTEGER NOT NULL ,
	cars_sold_count      INTEGER NULL ,
	average_asking_price INTEGER NULL ,
	total_price          INTEGER NULL ,
	average_car_mileage  INTEGER NULL 
);



CREATE UNIQUE INDEX XPKCar_Sales_Year_Agg_Fact ON Car_Sales_Year_Agg_Fact
(year_id   ASC,customer_id   ASC,car_feature_id   ASC,model_code   ASC,manufacturer_ShortName   ASC,vehicle_category_code   ASC);



ALTER TABLE Car_Sales_Year_Agg_Fact
	ADD CONSTRAINT  XPKCar_Sales_Year_Agg_Fact PRIMARY KEY (year_id,customer_id,car_feature_id,model_code,manufacturer_ShortName,vehicle_category_code);



CREATE TABLE Car_Services_Base_Fact_Table
(
	day_id               CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_Base_Fact_Tabl ON Car_Services_Base_Fact_Table
(day_id   ASC,part_id   ASC,defect_id   ASC,mechanic_id   ASC,car_id   ASC,customer_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_Base_Fact_Table
	ADD CONSTRAINT  XPKCar_Services_Base_Fact_Tabl PRIMARY KEY (day_id,part_id,defect_id,mechanic_id,car_id,customer_id,model_code,manufacturer_ShortName);



CREATE TABLE Car_Services_City_Agg_Fact
(
	day_id               CHAR(18) NOT NULL ,
	city_id              CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_City_Agg_Fact ON Car_Services_City_Agg_Fact
(part_id   ASC,defect_id   ASC,day_id   ASC,city_id   ASC,mechanic_id   ASC,car_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_City_Agg_Fact
	ADD CONSTRAINT  XPKCar_Services_City_Agg_Fact PRIMARY KEY (part_id,defect_id,day_id,city_id,mechanic_id,car_id,model_code,manufacturer_ShortName);



CREATE TABLE Car_Services_Country_Agg_Fact
(
	day_id               CHAR(18) NOT NULL ,
	country_id           CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_Country_Agg_Fa ON Car_Services_Country_Agg_Fact
(day_id   ASC,country_id   ASC,part_id   ASC,defect_id   ASC,mechanic_id   ASC,car_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD CONSTRAINT  XPKCar_Services_Country_Agg_Fa PRIMARY KEY (day_id,country_id,part_id,defect_id,mechanic_id,car_id,model_code,manufacturer_ShortName);



CREATE TABLE Car_Services_Month_Agg_Fact
(
	month_id             CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_Month_Agg_Fact ON Car_Services_Month_Agg_Fact
(month_id   ASC,part_id   ASC,defect_id   ASC,mechanic_id   ASC,car_id   ASC,customer_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD CONSTRAINT  XPKCar_Services_Month_Agg_Fact PRIMARY KEY (month_id,part_id,defect_id,mechanic_id,car_id,customer_id,model_code,manufacturer_ShortName);



CREATE TABLE Car_Services_Province_Agg_Fact
(
	day_id               CHAR(18) NOT NULL ,
	province_id          CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_Province_Agg_F ON Car_Services_Province_Agg_Fact
(day_id   ASC,province_id   ASC,part_id   ASC,defect_id   ASC,mechanic_id   ASC,car_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD CONSTRAINT  XPKCar_Services_Province_Agg_F PRIMARY KEY (day_id,province_id,part_id,defect_id,mechanic_id,car_id,model_code,manufacturer_ShortName);



CREATE TABLE Car_Services_Quater_Agg_Fact
(
	quarter_id           CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_Quater_Agg_Fac ON Car_Services_Quater_Agg_Fact
(quarter_id   ASC,part_id   ASC,defect_id   ASC,mechanic_id   ASC,car_id   ASC,customer_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD CONSTRAINT  XPKCar_Services_Quater_Agg_Fac PRIMARY KEY (quarter_id,part_id,defect_id,mechanic_id,car_id,customer_id,model_code,manufacturer_ShortName);



CREATE TABLE Car_Services_Town_Agg_Fact
(
	day_id               CHAR(18) NOT NULL ,
	town_id              CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_Town_Agg_Fact ON Car_Services_Town_Agg_Fact
(day_id   ASC,town_id   ASC,part_id   ASC,defect_id   ASC,mechanic_id   ASC,car_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD CONSTRAINT  XPKCar_Services_Town_Agg_Fact PRIMARY KEY (day_id,town_id,part_id,defect_id,mechanic_id,car_id,model_code,manufacturer_ShortName);



CREATE TABLE Car_Services_Week_Agg_Fact
(
	week_id              CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_Week_Agg_Fact ON Car_Services_Week_Agg_Fact
(week_id   ASC,part_id   ASC,defect_id   ASC,mechanic_id   ASC,car_id   ASC,customer_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD CONSTRAINT  XPKCar_Services_Week_Agg_Fact PRIMARY KEY (week_id,part_id,defect_id,mechanic_id,car_id,customer_id,model_code,manufacturer_ShortName);



CREATE TABLE Car_Services_Year_Agg_Fact
(
	year_id              CHAR(18) NOT NULL ,
	part_id              CHAR(18) NOT NULL ,
	defect_id            CHAR(18) NOT NULL ,
	mechanic_id          CHAR(18) NOT NULL ,
	amount               CHAR(18) NULL ,
	cost                 CHAR(18) NULL ,
	defects              CHAR(18) NULL ,
	parts                CHAR(18) NULL ,
	car_id               CHAR(18) NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	model_code           INTEGER NOT NULL ,
	manufacturer_ShortName VARCHAR2(20) NOT NULL 
);



CREATE UNIQUE INDEX XPKCar_Services_Year_Agg_Fact ON Car_Services_Year_Agg_Fact
(year_id   ASC,part_id   ASC,defect_id   ASC,mechanic_id   ASC,car_id   ASC,customer_id   ASC,model_code   ASC,manufacturer_ShortName   ASC);



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD CONSTRAINT  XPKCar_Services_Year_Agg_Fact PRIMARY KEY (year_id,part_id,defect_id,mechanic_id,car_id,customer_id,model_code,manufacturer_ShortName);



CREATE TABLE Cars_Sold
(
	car_sold_id          INTEGER NOT NULL ,
	car_for_sale_id      INTEGER NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	agreed_price         INTEGER NULL ,
	date_sold            DATE NULL ,
	other_details        VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKCars_Sold ON Cars_Sold
(car_sold_id   ASC);



ALTER TABLE Cars_Sold
	ADD CONSTRAINT  XPKCars_Sold PRIMARY KEY (car_sold_id);



CREATE TABLE City_Dim
(
	city_id              INTEGER NOT NULL ,
	city_description     VARCHAR2(20) NULL ,
	province_id          INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKCity_Dim ON City_Dim
(city_id   ASC);



ALTER TABLE City_Dim
	ADD CONSTRAINT  XPKCity_Dim PRIMARY KEY (city_id);



CREATE TABLE Country_Dim
(
	country_id           INTEGER NOT NULL ,
	country_description  VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKCountry_Dim ON Country_Dim
(country_id   ASC);



ALTER TABLE Country_Dim
	ADD CONSTRAINT  XPKCountry_Dim PRIMARY KEY (country_id);



CREATE TABLE Customer
(
	customer_id          INTEGER NOT NULL ,
	first_name           VARCHAR2(20) NULL ,
	middle_name          VARCHAR2(20) NULL ,
	last_name            VARCHAR2(20) NULL ,
	gender               VARCHAR2(1) NULL ,
	email_address        VARCHAR2(20) NULL ,
	phone_number         VARCHAR2(20) NULL ,
	address_line_1       VARCHAR2(20) NULL ,
	address_line_2       VARCHAR2(20) NULL ,
	address_line_3       VARCHAR2(20) NULL ,
	address_line_4       VARCHAR2(20) NULL ,
	town_id              INTEGER NOT NULL ,
	city_id              INTEGER NULL ,
	state                VARCHAR2(20) NULL ,
	county               VARCHAR2(20) NULL ,
	province_id          INTEGER NULL ,
	country_id           INTEGER NULL ,
	postal_code          INTEGER NULL ,
	other_details        VARCHAR2(20) NULL ,
	marital_status       CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKCustomer ON Customer
(customer_id   ASC);



ALTER TABLE Customer
	ADD CONSTRAINT  XPKCustomer PRIMARY KEY (customer_id);



CREATE TABLE Customer_Preferences
(
	customer_preference_id INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL ,
	customer_id          INTEGER NOT NULL ,
	customer_preference_details CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKCustomer_Preferences ON Customer_Preferences
(customer_preference_id   ASC);



ALTER TABLE Customer_Preferences
	ADD CONSTRAINT  XPKCustomer_Preferences PRIMARY KEY (customer_preference_id);



CREATE TABLE Day
(
	day_id               INTEGER NOT NULL ,
	day_description      VARCHAR2(20) NULL ,
	week_id              INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKDay ON Day
(day_id   ASC);



ALTER TABLE Day
	ADD CONSTRAINT  XPKDay PRIMARY KEY (day_id);



CREATE TABLE Defect
(
	defect_id            CHAR(18) NOT NULL ,
	defect_description   CHAR(18) NULL ,
	other_details        CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKDefect ON Defect
(defect_id   ASC);



ALTER TABLE Defect
	ADD CONSTRAINT  XPKDefect PRIMARY KEY (defect_id);



CREATE TABLE features_on_Car_for_Sale
(
	car_for_sale_id      INTEGER NOT NULL ,
	car_feature_id       INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKfeatures_on_Car_for_Sale ON features_on_Car_for_Sale
(car_for_sale_id   ASC,car_feature_id   ASC);



ALTER TABLE features_on_Car_for_Sale
	ADD CONSTRAINT  XPKfeatures_on_Car_for_Sale PRIMARY KEY (car_for_sale_id,car_feature_id);



CREATE TABLE Mechanic
(
	mechanic_id          CHAR(18) NOT NULL ,
	mechanic_name        CHAR(18) NULL ,
	mechanic_details     CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKMechanic ON Mechanic
(mechanic_id   ASC);



ALTER TABLE Mechanic
	ADD CONSTRAINT  XPKMechanic PRIMARY KEY (mechanic_id);



CREATE TABLE Month
(
	month_id             INTEGER NOT NULL ,
	month_description    VARCHAR2(20) NULL ,
	quarter_id           INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKMonth ON Month
(month_id   ASC);



ALTER TABLE Month
	ADD CONSTRAINT  XPKMonth PRIMARY KEY (month_id);



CREATE TABLE Parts
(
	part_id              CHAR(18) NOT NULL ,
	part_name            CHAR(18) NULL ,
	part_description     CHAR(18) NULL ,
	number_in_stock      CHAR(18) NULL ,
	other_details        CHAR(18) NULL ,
	other_part_details   CHAR(18) NULL ,
	weight               CHAR(18) NULL ,
	condition            CHAR(18) NULL ,
	mileage_donor_vehicle CHAR(18) NULL ,
	parent_part_id       CHAR(18) NULL ,
	part_price           CHAR(18) NULL ,
	part_type_code       CHAR(18) NOT NULL ,
	part_level_code      CHAR(18) NOT NULL 
);



CREATE UNIQUE INDEX XPKParts ON Parts
(part_id   ASC);



ALTER TABLE Parts
	ADD CONSTRAINT  XPKParts PRIMARY KEY (part_id);



CREATE TABLE Parts_Level
(
	part_level_code      CHAR(18) NOT NULL ,
	part_level_description CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKParts_Level ON Parts_Level
(part_level_code   ASC);



ALTER TABLE Parts_Level
	ADD CONSTRAINT  XPKParts_Level PRIMARY KEY (part_level_code);



CREATE TABLE Parts_Manufacturer
(
	pManufacturer_code   CHAR(18) NOT NULL ,
	Manufacturer_Name    CHAR(18) NULL ,
	other_details        CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKParts_Manufacturer ON Parts_Manufacturer
(pManufacturer_code   ASC);



ALTER TABLE Parts_Manufacturer
	ADD CONSTRAINT  XPKParts_Manufacturer PRIMARY KEY (pManufacturer_code);



CREATE TABLE Parts_Type
(
	part_type_code       CHAR(18) NOT NULL ,
	part_type_description CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKParts_Type ON Parts_Type
(part_type_code   ASC);



ALTER TABLE Parts_Type
	ADD CONSTRAINT  XPKParts_Type PRIMARY KEY (part_type_code);



CREATE TABLE Province_Dim
(
	province_id          INTEGER NOT NULL ,
	province_description VARCHAR2(20) NULL ,
	country_id           INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKProvince_Dim ON Province_Dim
(province_id   ASC);



ALTER TABLE Province_Dim
	ADD CONSTRAINT  XPKProvince_Dim PRIMARY KEY (province_id);



CREATE TABLE Quarter
(
	quarter_id           INTEGER NOT NULL ,
	quarter_description  VARCHAR2(20) NULL ,
	year_id              INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKQuarter ON Quarter
(quarter_id   ASC);



ALTER TABLE Quarter
	ADD CONSTRAINT  XPKQuarter PRIMARY KEY (quarter_id);



CREATE TABLE Supplier
(
	supplier_id          CHAR(18) NOT NULL ,
	supplier_details     CHAR(18) NULL 
);



CREATE UNIQUE INDEX XPKSupplier ON Supplier
(supplier_id   ASC);



ALTER TABLE Supplier
	ADD CONSTRAINT  XPKSupplier PRIMARY KEY (supplier_id);



CREATE TABLE Town__Dim
(
	town_id              INTEGER NOT NULL ,
	town_description     VARCHAR2(20) NULL ,
	city_id              INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKTown__Dim ON Town__Dim
(town_id   ASC);



ALTER TABLE Town__Dim
	ADD CONSTRAINT  XPKTown__Dim PRIMARY KEY (town_id);



CREATE TABLE Vehicle_Categories
(
	vehicle_category_code INTEGER NOT NULL ,
	vehicle_category_description VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKVehicle_Categories ON Vehicle_Categories
(vehicle_category_code   ASC);



ALTER TABLE Vehicle_Categories
	ADD CONSTRAINT  XPKVehicle_Categories PRIMARY KEY (vehicle_category_code);



CREATE TABLE Week
(
	week_id              INTEGER NOT NULL ,
	week_description     VARCHAR2(20) NULL ,
	month_id             INTEGER NOT NULL 
);



CREATE UNIQUE INDEX XPKWeek ON Week
(week_id   ASC);



ALTER TABLE Week
	ADD CONSTRAINT  XPKWeek PRIMARY KEY (week_id);



CREATE TABLE Year
(
	year_id              INTEGER NOT NULL ,
	year_description     VARCHAR2(20) NULL 
);



CREATE UNIQUE INDEX XPKYear ON Year
(year_id   ASC);



ALTER TABLE Year
	ADD CONSTRAINT  XPKYear PRIMARY KEY (year_id);



ALTER TABLE Car_for_Sale
	ADD (CONSTRAINT R_85 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_for_Sale
	ADD (CONSTRAINT R_86 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_for_Sale
	ADD (CONSTRAINT R_87 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Models
	ADD (CONSTRAINT R_106 FOREIGN KEY (manufacturer_code) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Parts_Base_Fact_Table
	ADD (CONSTRAINT R_118 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Parts_Base_Fact_Table
	ADD (CONSTRAINT R_141 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Parts_Base_Fact_Table
	ADD (CONSTRAINT R_142 FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id));



ALTER TABLE Car_Parts_Base_Fact_Table
	ADD (CONSTRAINT R_143 FOREIGN KEY (pManufacturer_code) REFERENCES Parts_Manufacturer (pManufacturer_code));



ALTER TABLE Car_Parts_Base_Fact_Table
	ADD (CONSTRAINT R_144 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Parts_Base_Fact_Table
	ADD (CONSTRAINT R_146 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Parts_Base_Fact_Table
	ADD (CONSTRAINT R_319 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Parts_Month_Agg_Fact
	ADD (CONSTRAINT R_25 FOREIGN KEY (month_id) REFERENCES Month (month_id));



ALTER TABLE Car_Parts_Month_Agg_Fact
	ADD (CONSTRAINT R_160 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Parts_Month_Agg_Fact
	ADD (CONSTRAINT R_161 FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id));



ALTER TABLE Car_Parts_Month_Agg_Fact
	ADD (CONSTRAINT R_162 FOREIGN KEY (pManufacturer_code) REFERENCES Parts_Manufacturer (pManufacturer_code));



ALTER TABLE Car_Parts_Month_Agg_Fact
	ADD (CONSTRAINT R_163 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Parts_Month_Agg_Fact
	ADD (CONSTRAINT R_165 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Parts_Month_Agg_Fact
	ADD (CONSTRAINT R_321 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Parts_Quater_Agg_Fact
	ADD (CONSTRAINT R_47 FOREIGN KEY (quarter_id) REFERENCES Quarter (quarter_id));



ALTER TABLE Car_Parts_Quater_Agg_Fact
	ADD (CONSTRAINT R_166 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Parts_Quater_Agg_Fact
	ADD (CONSTRAINT R_167 FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id));



ALTER TABLE Car_Parts_Quater_Agg_Fact
	ADD (CONSTRAINT R_168 FOREIGN KEY (pManufacturer_code) REFERENCES Parts_Manufacturer (pManufacturer_code));



ALTER TABLE Car_Parts_Quater_Agg_Fact
	ADD (CONSTRAINT R_169 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Parts_Quater_Agg_Fact
	ADD (CONSTRAINT R_171 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Parts_Quater_Agg_Fact
	ADD (CONSTRAINT R_322 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Parts_Week_Agg_Fact
	ADD (CONSTRAINT R_147 FOREIGN KEY (week_id) REFERENCES Week (week_id));



ALTER TABLE Car_Parts_Week_Agg_Fact
	ADD (CONSTRAINT R_149 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Parts_Week_Agg_Fact
	ADD (CONSTRAINT R_150 FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id));



ALTER TABLE Car_Parts_Week_Agg_Fact
	ADD (CONSTRAINT R_151 FOREIGN KEY (pManufacturer_code) REFERENCES Parts_Manufacturer (pManufacturer_code));



ALTER TABLE Car_Parts_Week_Agg_Fact
	ADD (CONSTRAINT R_152 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Parts_Week_Agg_Fact
	ADD (CONSTRAINT R_154 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Parts_Week_Agg_Fact
	ADD (CONSTRAINT R_320 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Parts_Year_Agg_Fact
	ADD (CONSTRAINT R_55 FOREIGN KEY (year_id) REFERENCES Year (year_id));



ALTER TABLE Car_Parts_Year_Agg_Fact
	ADD (CONSTRAINT R_172 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Parts_Year_Agg_Fact
	ADD (CONSTRAINT R_173 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Parts_Year_Agg_Fact
	ADD (CONSTRAINT R_175 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Parts_Year_Agg_Fact
	ADD (CONSTRAINT R_176 FOREIGN KEY (pManufacturer_code) REFERENCES Parts_Manufacturer (pManufacturer_code));



ALTER TABLE Car_Parts_Year_Agg_Fact
	ADD (CONSTRAINT R_177 FOREIGN KEY (supplier_id) REFERENCES Supplier (supplier_id));



ALTER TABLE Car_Parts_Year_Agg_Fact
	ADD (CONSTRAINT R_323 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Base_Fact_Table
	ADD (CONSTRAINT R_9 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Sales_Base_Fact_Table
	ADD (CONSTRAINT R_10 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Sales_Base_Fact_Table
	ADD (CONSTRAINT R_11 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Base_Fact_Table
	ADD (CONSTRAINT R_12 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Base_Fact_Table
	ADD (CONSTRAINT R_13 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_Base_Fact_Table
	ADD (CONSTRAINT R_93 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_City_Agg_Fact
	ADD (CONSTRAINT R_39 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_City_Agg_Fact
	ADD (CONSTRAINT R_42 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Sales_City_Agg_Fact
	ADD (CONSTRAINT R_43 FOREIGN KEY (city_id) REFERENCES City_Dim (city_id));



ALTER TABLE Car_Sales_City_Agg_Fact
	ADD (CONSTRAINT R_100 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_City_Agg_Fact
	ADD (CONSTRAINT R_103 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_City_Agg_Fact
	ADD (CONSTRAINT R_104 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Country_Agg_Fact
	ADD (CONSTRAINT R_71 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Sales_Country_Agg_Fact
	ADD (CONSTRAINT R_72 FOREIGN KEY (country_id) REFERENCES Country_Dim (country_id));



ALTER TABLE Car_Sales_Country_Agg_Fact
	ADD (CONSTRAINT R_73 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Country_Agg_Fact
	ADD (CONSTRAINT R_74 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Country_Agg_Fact
	ADD (CONSTRAINT R_75 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_Country_Agg_Fact
	ADD (CONSTRAINT R_102 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_Month_Agg_Fact
	ADD (CONSTRAINT R_25 FOREIGN KEY (month_id) REFERENCES Month (month_id));



ALTER TABLE Car_Sales_Month_Agg_Fact
	ADD (CONSTRAINT R_26 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Sales_Month_Agg_Fact
	ADD (CONSTRAINT R_27 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Month_Agg_Fact
	ADD (CONSTRAINT R_28 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Month_Agg_Fact
	ADD (CONSTRAINT R_29 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_Month_Agg_Fact
	ADD (CONSTRAINT R_95 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_Province_Agg_Fact
	ADD (CONSTRAINT R_63 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Sales_Province_Agg_Fact
	ADD (CONSTRAINT R_64 FOREIGN KEY (province_id) REFERENCES Province_Dim (province_id));



ALTER TABLE Car_Sales_Province_Agg_Fact
	ADD (CONSTRAINT R_65 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Province_Agg_Fact
	ADD (CONSTRAINT R_66 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Province_Agg_Fact
	ADD (CONSTRAINT R_67 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_Province_Agg_Fact
	ADD (CONSTRAINT R_101 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_Quater_Agg_Fact
	ADD (CONSTRAINT R_47 FOREIGN KEY (quarter_id) REFERENCES Quarter (quarter_id));



ALTER TABLE Car_Sales_Quater_Agg_Fact
	ADD (CONSTRAINT R_48 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Sales_Quater_Agg_Fact
	ADD (CONSTRAINT R_49 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Quater_Agg_Fact
	ADD (CONSTRAINT R_50 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Quater_Agg_Fact
	ADD (CONSTRAINT R_51 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_Quater_Agg_Fact
	ADD (CONSTRAINT R_96 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_Quater_Agg_Fact
	ADD (CONSTRAINT R_97 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_Town_Agg_Fact
	ADD (CONSTRAINT R_33 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Sales_Town_Agg_Fact
	ADD (CONSTRAINT R_34 FOREIGN KEY (town_id) REFERENCES Town__Dim (town_id));



ALTER TABLE Car_Sales_Town_Agg_Fact
	ADD (CONSTRAINT R_35 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Town_Agg_Fact
	ADD (CONSTRAINT R_36 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Town_Agg_Fact
	ADD (CONSTRAINT R_37 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_Town_Agg_Fact
	ADD (CONSTRAINT R_99 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_Week_Agg_Fact
	ADD (CONSTRAINT R_17 FOREIGN KEY (week_id) REFERENCES Week (week_id));



ALTER TABLE Car_Sales_Week_Agg_Fact
	ADD (CONSTRAINT R_18 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Sales_Week_Agg_Fact
	ADD (CONSTRAINT R_19 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Week_Agg_Fact
	ADD (CONSTRAINT R_20 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Week_Agg_Fact
	ADD (CONSTRAINT R_21 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_Week_Agg_Fact
	ADD (CONSTRAINT R_94 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Sales_Year_Agg_Fact
	ADD (CONSTRAINT R_55 FOREIGN KEY (year_id) REFERENCES Year (year_id));



ALTER TABLE Car_Sales_Year_Agg_Fact
	ADD (CONSTRAINT R_56 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Sales_Year_Agg_Fact
	ADD (CONSTRAINT R_57 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Car_Sales_Year_Agg_Fact
	ADD (CONSTRAINT R_58 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Sales_Year_Agg_Fact
	ADD (CONSTRAINT R_59 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Sales_Year_Agg_Fact
	ADD (CONSTRAINT R_98 FOREIGN KEY (vehicle_category_code) REFERENCES Vehicle_Categories (vehicle_category_code));



ALTER TABLE Car_Services_Base_Fact_Table
	ADD (CONSTRAINT R_9 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Services_Base_Fact_Table
	ADD (CONSTRAINT R_11 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Services_Base_Fact_Table
	ADD (CONSTRAINT R_12 FOREIGN KEY (defect_id) REFERENCES Defect (defect_id));



ALTER TABLE Car_Services_Base_Fact_Table
	ADD (CONSTRAINT R_13 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_Base_Fact_Table
	ADD (CONSTRAINT R_16 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_Base_Fact_Table
	ADD (CONSTRAINT R_296 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Services_Base_Fact_Table
	ADD (CONSTRAINT R_301 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_Base_Fact_Table
	ADD (CONSTRAINT R_314 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Services_City_Agg_Fact
	ADD (CONSTRAINT R_39 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_City_Agg_Fact
	ADD (CONSTRAINT R_42 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Services_City_Agg_Fact
	ADD (CONSTRAINT R_43 FOREIGN KEY (city_id) REFERENCES City_Dim (city_id));



ALTER TABLE Car_Services_City_Agg_Fact
	ADD (CONSTRAINT R_46 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_City_Agg_Fact
	ADD (CONSTRAINT R_305 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_City_Agg_Fact
	ADD (CONSTRAINT R_310 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD (CONSTRAINT R_71 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD (CONSTRAINT R_72 FOREIGN KEY (country_id) REFERENCES Country_Dim (country_id));



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD (CONSTRAINT R_73 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD (CONSTRAINT R_74 FOREIGN KEY (defect_id) REFERENCES Defect (defect_id));



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD (CONSTRAINT R_75 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD (CONSTRAINT R_78 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD (CONSTRAINT R_306 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_Country_Agg_Fact
	ADD (CONSTRAINT R_315 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD (CONSTRAINT R_25 FOREIGN KEY (month_id) REFERENCES Month (month_id));



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD (CONSTRAINT R_27 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD (CONSTRAINT R_28 FOREIGN KEY (defect_id) REFERENCES Defect (defect_id));



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD (CONSTRAINT R_29 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD (CONSTRAINT R_32 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD (CONSTRAINT R_294 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD (CONSTRAINT R_303 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_Month_Agg_Fact
	ADD (CONSTRAINT R_312 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD (CONSTRAINT R_63 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD (CONSTRAINT R_64 FOREIGN KEY (province_id) REFERENCES Province_Dim (province_id));



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD (CONSTRAINT R_65 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD (CONSTRAINT R_66 FOREIGN KEY (defect_id) REFERENCES Defect (defect_id));



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD (CONSTRAINT R_67 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD (CONSTRAINT R_70 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD (CONSTRAINT R_307 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_Province_Agg_Fact
	ADD (CONSTRAINT R_316 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD (CONSTRAINT R_47 FOREIGN KEY (quarter_id) REFERENCES Quarter (quarter_id));



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD (CONSTRAINT R_49 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD (CONSTRAINT R_50 FOREIGN KEY (defect_id) REFERENCES Defect (defect_id));



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD (CONSTRAINT R_51 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD (CONSTRAINT R_54 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD (CONSTRAINT R_300 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD (CONSTRAINT R_309 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_Quater_Agg_Fact
	ADD (CONSTRAINT R_318 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD (CONSTRAINT R_33 FOREIGN KEY (day_id) REFERENCES Day (day_id));



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD (CONSTRAINT R_34 FOREIGN KEY (town_id) REFERENCES Town__Dim (town_id));



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD (CONSTRAINT R_35 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD (CONSTRAINT R_36 FOREIGN KEY (defect_id) REFERENCES Defect (defect_id));



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD (CONSTRAINT R_37 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD (CONSTRAINT R_41 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD (CONSTRAINT R_304 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_Town_Agg_Fact
	ADD (CONSTRAINT R_311 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD (CONSTRAINT R_17 FOREIGN KEY (week_id) REFERENCES Week (week_id));



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD (CONSTRAINT R_19 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD (CONSTRAINT R_20 FOREIGN KEY (defect_id) REFERENCES Defect (defect_id));



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD (CONSTRAINT R_21 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD (CONSTRAINT R_24 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD (CONSTRAINT R_295 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD (CONSTRAINT R_302 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_Week_Agg_Fact
	ADD (CONSTRAINT R_313 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD (CONSTRAINT R_55 FOREIGN KEY (year_id) REFERENCES Year (year_id));



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD (CONSTRAINT R_57 FOREIGN KEY (part_id) REFERENCES Parts (part_id));



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD (CONSTRAINT R_58 FOREIGN KEY (defect_id) REFERENCES Defect (defect_id));



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD (CONSTRAINT R_59 FOREIGN KEY (car_id) REFERENCES Car (car_id));



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD (CONSTRAINT R_61 FOREIGN KEY (mechanic_id) REFERENCES Mechanic (mechanic_id));



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD (CONSTRAINT R_299 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD (CONSTRAINT R_308 FOREIGN KEY (model_code) REFERENCES Car_Models (model_code));



ALTER TABLE Car_Services_Year_Agg_Fact
	ADD (CONSTRAINT R_317 FOREIGN KEY (manufacturer_ShortName) REFERENCES Car_Manufacturer (manufacturer_ShortName));



ALTER TABLE Cars_Sold
	ADD (CONSTRAINT R_90 FOREIGN KEY (car_for_sale_id) REFERENCES Car_for_Sale (car_for_sale_id));



ALTER TABLE Cars_Sold
	ADD (CONSTRAINT R_91 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE City_Dim
	ADD (CONSTRAINT R_7 FOREIGN KEY (province_id) REFERENCES Province_Dim (province_id));



ALTER TABLE Customer
	ADD (CONSTRAINT R_105 FOREIGN KEY (town_id) REFERENCES Town__Dim (town_id));



ALTER TABLE Customer_Preferences
	ADD (CONSTRAINT R_79 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE Customer_Preferences
	ADD (CONSTRAINT R_80 FOREIGN KEY (customer_id) REFERENCES Customer (customer_id));



ALTER TABLE Day
	ADD (CONSTRAINT R_1 FOREIGN KEY (week_id) REFERENCES Week (week_id));



ALTER TABLE features_on_Car_for_Sale
	ADD (CONSTRAINT R_88 FOREIGN KEY (car_feature_id) REFERENCES Car_Features (car_feature_id));



ALTER TABLE features_on_Car_for_Sale
	ADD (CONSTRAINT R_89 FOREIGN KEY (car_for_sale_id) REFERENCES Car_for_Sale (car_for_sale_id));



ALTER TABLE Month
	ADD (CONSTRAINT R_3 FOREIGN KEY (quarter_id) REFERENCES Quarter (quarter_id));



ALTER TABLE Parts
	ADD (CONSTRAINT R_116 FOREIGN KEY (part_id) REFERENCES Parts (part_id) ON DELETE SET NULL);



ALTER TABLE Parts
	ADD (CONSTRAINT R_134 FOREIGN KEY (part_type_code) REFERENCES Parts_Type (part_type_code));



ALTER TABLE Parts
	ADD (CONSTRAINT R_135 FOREIGN KEY (part_level_code) REFERENCES Parts_Level (part_level_code));



ALTER TABLE Province_Dim
	ADD (CONSTRAINT R_8 FOREIGN KEY (country_id) REFERENCES Country_Dim (country_id));



ALTER TABLE Quarter
	ADD (CONSTRAINT R_4 FOREIGN KEY (year_id) REFERENCES Year (year_id));



ALTER TABLE Town__Dim
	ADD (CONSTRAINT R_6 FOREIGN KEY (city_id) REFERENCES City_Dim (city_id));



ALTER TABLE Week
	ADD (CONSTRAINT R_2 FOREIGN KEY (month_id) REFERENCES Month (month_id));



CREATE  TRIGGER  tD_Car AFTER DELETE ON Car for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Car 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000f31ff", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_144", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_152", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_163", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_169", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_175", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car AFTER UPDATE ON Car for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="001123a7", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_144", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_152", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_163", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_169", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_175", FK_COLUMNS="car_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_id <> :new.car_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.car_id = :old.car_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Car_Features AFTER DELETE ON Car_Features for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Car_Features 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000ca2a2", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Customer_Preferences on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_79", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer_Preferences
      WHERE
        /*  %JoinFKPK(Customer_Preferences,:%Old," = "," AND") */
        Customer_Preferences.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Customer_Preferences exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  features_on_Car_for_Sale on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="features_on_Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_88", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM features_on_Car_for_Sale
      WHERE
        /*  %JoinFKPK(features_on_Car_for_Sale,:%Old," = "," AND") */
        features_on_Car_for_Sale.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because features_on_Car_for_Sale exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_104", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Features because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Features AFTER UPDATE ON Car_Features for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Features 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000e8438", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Customer_Preferences on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_79", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Customer_Preferences
      WHERE
        /*  %JoinFKPK(Customer_Preferences,:%Old," = "," AND") */
        Customer_Preferences.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Customer_Preferences exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  features_on_Car_for_Sale on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="features_on_Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_88", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM features_on_Car_for_Sale
      WHERE
        /*  %JoinFKPK(features_on_Car_for_Sale,:%Old," = "," AND") */
        features_on_Car_for_Sale.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because features_on_Car_for_Sale exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_104", FK_COLUMNS="car_feature_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_feature_id <> :new.car_feature_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.car_feature_id = :old.car_feature_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Features because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_for_Sale BEFORE INSERT ON Car_for_Sale for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_for_Sale 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_for_Sale on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="000375de", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_85", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_for_Sale because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_for_Sale on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_86", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_for_Sale because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_for_Sale on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_87", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_for_Sale because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Car_for_Sale AFTER DELETE ON Car_for_Sale for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Car_for_Sale 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_for_Sale  features_on_Car_for_Sale on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00020c6e", PARENT_OWNER="", PARENT_TABLE="Car_for_Sale"
    CHILD_OWNER="", CHILD_TABLE="features_on_Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_89", FK_COLUMNS="car_for_sale_id" */
    SELECT count(*) INTO NUMROWS
      FROM features_on_Car_for_Sale
      WHERE
        /*  %JoinFKPK(features_on_Car_for_Sale,:%Old," = "," AND") */
        features_on_Car_for_Sale.car_for_sale_id = :old.car_for_sale_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_for_Sale because features_on_Car_for_Sale exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_for_Sale  Cars_Sold on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_for_Sale"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_90", FK_COLUMNS="car_for_sale_id" */
    SELECT count(*) INTO NUMROWS
      FROM Cars_Sold
      WHERE
        /*  %JoinFKPK(Cars_Sold,:%Old," = "," AND") */
        Cars_Sold.car_for_sale_id = :old.car_for_sale_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_for_Sale because Cars_Sold exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_for_Sale AFTER UPDATE ON Car_for_Sale for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_for_Sale 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car_for_Sale  features_on_Car_for_Sale on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0005e383", PARENT_OWNER="", PARENT_TABLE="Car_for_Sale"
    CHILD_OWNER="", CHILD_TABLE="features_on_Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_89", FK_COLUMNS="car_for_sale_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_for_sale_id <> :new.car_for_sale_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM features_on_Car_for_Sale
      WHERE
        /*  %JoinFKPK(features_on_Car_for_Sale,:%Old," = "," AND") */
        features_on_Car_for_Sale.car_for_sale_id = :old.car_for_sale_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_for_Sale because features_on_Car_for_Sale exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_for_Sale  Cars_Sold on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_for_Sale"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_90", FK_COLUMNS="car_for_sale_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.car_for_sale_id <> :new.car_for_sale_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Cars_Sold
      WHERE
        /*  %JoinFKPK(Cars_Sold,:%Old," = "," AND") */
        Cars_Sold.car_for_sale_id = :old.car_for_sale_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_for_Sale because Cars_Sold exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_for_Sale on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_85", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_for_Sale because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_for_Sale on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_86", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_for_Sale because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_for_Sale on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_87", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_for_Sale because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Car_Manufacturer AFTER DELETE ON Car_Manufacturer for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Car_Manufacturer 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="001ef78b", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_for_Sale on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_85", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_for_Sale
      WHERE
        /*  %JoinFKPK(Car_for_Sale,:%Old," = "," AND") */
        Car_for_Sale.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_for_Sale exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Models on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Models"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_106", FK_COLUMNS="manufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /*  %JoinFKPK(Car_Models,:%Old," = "," AND") */
        Car_Models.manufacturer_code = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Models exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_146", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_154", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_165", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_171", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_173", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_310", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_311", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_312", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_313", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_314", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_315", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_316", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_317", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_318", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Manufacturer because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Manufacturer AFTER UPDATE ON Car_Manufacturer for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Manufacturer 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0023c46a", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_for_Sale on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_85", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_for_Sale
      WHERE
        /*  %JoinFKPK(Car_for_Sale,:%Old," = "," AND") */
        Car_for_Sale.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_for_Sale exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Models on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Models"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_106", FK_COLUMNS="manufacturer_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /*  %JoinFKPK(Car_Models,:%Old," = "," AND") */
        Car_Models.manufacturer_code = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Models exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_146", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_154", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_165", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_171", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_173", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_310", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_311", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_312", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_313", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_314", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_315", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_316", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_317", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_318", FK_COLUMNS="manufacturer_ShortName" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.manufacturer_ShortName <> :new.manufacturer_ShortName
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.manufacturer_ShortName = :old.manufacturer_ShortName;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Manufacturer because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Models BEFORE INSERT ON Car_Models for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Models 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Models on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00011a5d", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Models"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_106", FK_COLUMNS="manufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_code = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Models because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Car_Models AFTER DELETE ON Car_Models for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Car_Models 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="001b34dc", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_66", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_for_Sale on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_86", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_for_Sale
      WHERE
        /*  %JoinFKPK(Car_for_Sale,:%Old," = "," AND") */
        Car_for_Sale.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_for_Sale exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_103", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_301", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_302", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_303", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_304", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_305", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_306", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_307", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_308", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_309", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_319", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_320", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_321", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_322", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_323", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Car_Models because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Models AFTER UPDATE ON Car_Models for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Models 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00209f87", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_66", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_for_Sale on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_86", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_for_Sale
      WHERE
        /*  %JoinFKPK(Car_for_Sale,:%Old," = "," AND") */
        Car_for_Sale.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_for_Sale exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_103", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_301", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_302", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_303", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_304", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_305", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_306", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_307", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_308", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_309", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_319", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_320", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_321", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_322", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_323", FK_COLUMNS="model_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.model_code <> :new.model_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.model_code = :old.model_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Car_Models because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Models on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Models"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_106", FK_COLUMNS="manufacturer_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_code = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Models because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Parts_Base_Fact_Table BEFORE INSERT ON Car_Parts_Base_Fact_Table for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Parts_Base_Fact_Table 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0007c39c", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_118", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Base_Fact_Table because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Parts_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_141", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Base_Fact_Table because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_142", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
        /* %JoinFKPK(:%New,Supplier," = "," AND") */
        :new.supplier_id = Supplier.supplier_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Base_Fact_Table because Supplier does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_143", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
        :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Base_Fact_Table because Parts_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_144", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Base_Fact_Table because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_146", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Base_Fact_Table because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_319", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Base_Fact_Table because Car_Models does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Parts_Base_Fact_Table AFTER UPDATE ON Car_Parts_Base_Fact_Table for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Parts_Base_Fact_Table 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0007d78f", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_118", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Base_Fact_Table because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Parts_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_141", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Base_Fact_Table because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_142", FK_COLUMNS="supplier_id" */
  SELECT count(*) INTO NUMROWS
    FROM Supplier
    WHERE
      /* %JoinFKPK(:%New,Supplier," = "," AND") */
      :new.supplier_id = Supplier.supplier_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Base_Fact_Table because Supplier does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_143", FK_COLUMNS="pManufacturer_code" */
  SELECT count(*) INTO NUMROWS
    FROM Parts_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
      :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Base_Fact_Table because Parts_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_144", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Base_Fact_Table because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_146", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Base_Fact_Table because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_319", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Base_Fact_Table because Car_Models does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Parts_Month_Agg_Fact BEFORE INSERT ON Car_Parts_Month_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Parts_Month_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Month  Car_Parts_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0007caac", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
    SELECT count(*) INTO NUMROWS
      FROM Month
      WHERE
        /* %JoinFKPK(:%New,Month," = "," AND") */
        :new.month_id = Month.month_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Month_Agg_Fact because Month does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_160", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Month_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_161", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
        /* %JoinFKPK(:%New,Supplier," = "," AND") */
        :new.supplier_id = Supplier.supplier_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Month_Agg_Fact because Supplier does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_162", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
        :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Month_Agg_Fact because Parts_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_163", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Month_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_165", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Month_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_321", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Month_Agg_Fact because Car_Models does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Parts_Month_Agg_Fact AFTER UPDATE ON Car_Parts_Month_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Parts_Month_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Month  Car_Parts_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0007d284", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
  SELECT count(*) INTO NUMROWS
    FROM Month
    WHERE
      /* %JoinFKPK(:%New,Month," = "," AND") */
      :new.month_id = Month.month_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Month_Agg_Fact because Month does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_160", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Month_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_161", FK_COLUMNS="supplier_id" */
  SELECT count(*) INTO NUMROWS
    FROM Supplier
    WHERE
      /* %JoinFKPK(:%New,Supplier," = "," AND") */
      :new.supplier_id = Supplier.supplier_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Month_Agg_Fact because Supplier does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_162", FK_COLUMNS="pManufacturer_code" */
  SELECT count(*) INTO NUMROWS
    FROM Parts_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
      :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Month_Agg_Fact because Parts_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_163", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Month_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_165", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Month_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_321", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Month_Agg_Fact because Car_Models does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Parts_Quater_Agg_Fact BEFORE INSERT ON Car_Parts_Quater_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Parts_Quater_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Quarter  Car_Parts_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0007f66f", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
    SELECT count(*) INTO NUMROWS
      FROM Quarter
      WHERE
        /* %JoinFKPK(:%New,Quarter," = "," AND") */
        :new.quarter_id = Quarter.quarter_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Quater_Agg_Fact because Quarter does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_166", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Quater_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_167", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
        /* %JoinFKPK(:%New,Supplier," = "," AND") */
        :new.supplier_id = Supplier.supplier_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Quater_Agg_Fact because Supplier does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_168", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
        :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Quater_Agg_Fact because Parts_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_169", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Quater_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_171", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Quater_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_322", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Quater_Agg_Fact because Car_Models does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Parts_Quater_Agg_Fact AFTER UPDATE ON Car_Parts_Quater_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Parts_Quater_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Quarter  Car_Parts_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0007e7dc", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
  SELECT count(*) INTO NUMROWS
    FROM Quarter
    WHERE
      /* %JoinFKPK(:%New,Quarter," = "," AND") */
      :new.quarter_id = Quarter.quarter_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Quater_Agg_Fact because Quarter does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_166", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Quater_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_167", FK_COLUMNS="supplier_id" */
  SELECT count(*) INTO NUMROWS
    FROM Supplier
    WHERE
      /* %JoinFKPK(:%New,Supplier," = "," AND") */
      :new.supplier_id = Supplier.supplier_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Quater_Agg_Fact because Supplier does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_168", FK_COLUMNS="pManufacturer_code" */
  SELECT count(*) INTO NUMROWS
    FROM Parts_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
      :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Quater_Agg_Fact because Parts_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_169", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Quater_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_171", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Quater_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_322", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Quater_Agg_Fact because Car_Models does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Parts_Week_Agg_Fact BEFORE INSERT ON Car_Parts_Week_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Parts_Week_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Week  Car_Parts_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0007b411", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_147", FK_COLUMNS="week_id" */
    SELECT count(*) INTO NUMROWS
      FROM Week
      WHERE
        /* %JoinFKPK(:%New,Week," = "," AND") */
        :new.week_id = Week.week_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Week_Agg_Fact because Week does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_149", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Week_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_150", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
        /* %JoinFKPK(:%New,Supplier," = "," AND") */
        :new.supplier_id = Supplier.supplier_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Week_Agg_Fact because Supplier does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_151", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
        :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Week_Agg_Fact because Parts_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_152", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Week_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_154", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Week_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_320", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Week_Agg_Fact because Car_Models does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Parts_Week_Agg_Fact AFTER UPDATE ON Car_Parts_Week_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Parts_Week_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Week  Car_Parts_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0007cb71", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_147", FK_COLUMNS="week_id" */
  SELECT count(*) INTO NUMROWS
    FROM Week
    WHERE
      /* %JoinFKPK(:%New,Week," = "," AND") */
      :new.week_id = Week.week_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Week_Agg_Fact because Week does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_149", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Week_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_150", FK_COLUMNS="supplier_id" */
  SELECT count(*) INTO NUMROWS
    FROM Supplier
    WHERE
      /* %JoinFKPK(:%New,Supplier," = "," AND") */
      :new.supplier_id = Supplier.supplier_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Week_Agg_Fact because Supplier does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_151", FK_COLUMNS="pManufacturer_code" */
  SELECT count(*) INTO NUMROWS
    FROM Parts_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
      :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Week_Agg_Fact because Parts_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_152", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Week_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_154", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Week_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_320", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Week_Agg_Fact because Car_Models does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Parts_Year_Agg_Fact BEFORE INSERT ON Car_Parts_Year_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Parts_Year_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Year  Car_Parts_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0007d564", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
    SELECT count(*) INTO NUMROWS
      FROM Year
      WHERE
        /* %JoinFKPK(:%New,Year," = "," AND") */
        :new.year_id = Year.year_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Year_Agg_Fact because Year does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_172", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Year_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Parts_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_173", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Year_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Parts_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_175", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Year_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_176", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
        :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Year_Agg_Fact because Parts_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_177", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Supplier
      WHERE
        /* %JoinFKPK(:%New,Supplier," = "," AND") */
        :new.supplier_id = Supplier.supplier_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Year_Agg_Fact because Supplier does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Parts_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_323", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Parts_Year_Agg_Fact because Car_Models does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Parts_Year_Agg_Fact AFTER UPDATE ON Car_Parts_Year_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Parts_Year_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Year  Car_Parts_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0007bf37", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
  SELECT count(*) INTO NUMROWS
    FROM Year
    WHERE
      /* %JoinFKPK(:%New,Year," = "," AND") */
      :new.year_id = Year.year_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Year_Agg_Fact because Year does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_172", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Year_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Parts_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_173", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Year_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Parts_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_175", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Year_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_176", FK_COLUMNS="pManufacturer_code" */
  SELECT count(*) INTO NUMROWS
    FROM Parts_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Parts_Manufacturer," = "," AND") */
      :new.pManufacturer_code = Parts_Manufacturer.pManufacturer_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Year_Agg_Fact because Parts_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_177", FK_COLUMNS="supplier_id" */
  SELECT count(*) INTO NUMROWS
    FROM Supplier
    WHERE
      /* %JoinFKPK(:%New,Supplier," = "," AND") */
      :new.supplier_id = Supplier.supplier_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Year_Agg_Fact because Supplier does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Parts_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_323", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Parts_Year_Agg_Fact because Car_Models does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_Base_Fact_Table BEFORE INSERT ON Car_Sales_Base_Fact_Table for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_Base_Fact_Table 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0006f496", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Base_Fact_Table because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Base_Fact_Table because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Base_Fact_Table because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Base_Fact_Table because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Base_Fact_Table because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_93", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Base_Fact_Table because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_Base_Fact_Table AFTER UPDATE ON Car_Sales_Base_Fact_Table for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_Base_Fact_Table 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0006e545", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Base_Fact_Table because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Base_Fact_Table because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Base_Fact_Table because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Base_Fact_Table because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Base_Fact_Table because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_93", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Base_Fact_Table because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_City_Agg_Fact BEFORE INSERT ON Car_Sales_City_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_City_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0006d568", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_City_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_City_Agg_Fact because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* City_Dim  Car_Sales_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="city_id" */
    SELECT count(*) INTO NUMROWS
      FROM City_Dim
      WHERE
        /* %JoinFKPK(:%New,City_Dim," = "," AND") */
        :new.city_id = City_Dim.city_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_City_Agg_Fact because City_Dim does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_100", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_City_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_103", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_City_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_104", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_City_Agg_Fact because Car_Features does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_City_Agg_Fact AFTER UPDATE ON Car_Sales_City_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_City_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0006cd7a", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_City_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_City_Agg_Fact because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* City_Dim  Car_Sales_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="city_id" */
  SELECT count(*) INTO NUMROWS
    FROM City_Dim
    WHERE
      /* %JoinFKPK(:%New,City_Dim," = "," AND") */
      :new.city_id = City_Dim.city_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_City_Agg_Fact because City_Dim does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_100", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_City_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_103", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_City_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_104", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_City_Agg_Fact because Car_Features does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_Country_Agg_Fact BEFORE INSERT ON Car_Sales_Country_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_Country_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0006feae", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Country_Agg_Fact because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Country_Dim  Car_Sales_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="country_id" */
    SELECT count(*) INTO NUMROWS
      FROM Country_Dim
      WHERE
        /* %JoinFKPK(:%New,Country_Dim," = "," AND") */
        :new.country_id = Country_Dim.country_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Country_Agg_Fact because Country_Dim does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Country_Agg_Fact because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Country_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Country_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_102", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Country_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_Country_Agg_Fact AFTER UPDATE ON Car_Sales_Country_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_Country_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0006f6e9", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Country_Agg_Fact because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Country_Dim  Car_Sales_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="country_id" */
  SELECT count(*) INTO NUMROWS
    FROM Country_Dim
    WHERE
      /* %JoinFKPK(:%New,Country_Dim," = "," AND") */
      :new.country_id = Country_Dim.country_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Country_Agg_Fact because Country_Dim does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Country_Agg_Fact because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Country_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Country_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_102", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Country_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_Month_Agg_Fact BEFORE INSERT ON Car_Sales_Month_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_Month_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Month  Car_Sales_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0006f093", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
    SELECT count(*) INTO NUMROWS
      FROM Month
      WHERE
        /* %JoinFKPK(:%New,Month," = "," AND") */
        :new.month_id = Month.month_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Month_Agg_Fact because Month does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_26", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Month_Agg_Fact because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Month_Agg_Fact because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Month_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Month_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_95", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Month_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_Month_Agg_Fact AFTER UPDATE ON Car_Sales_Month_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_Month_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Month  Car_Sales_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0006fd60", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
  SELECT count(*) INTO NUMROWS
    FROM Month
    WHERE
      /* %JoinFKPK(:%New,Month," = "," AND") */
      :new.month_id = Month.month_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Month_Agg_Fact because Month does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_26", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Month_Agg_Fact because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Month_Agg_Fact because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Month_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Month_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_95", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Month_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_Province_Agg_Fact BEFORE INSERT ON Car_Sales_Province_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_Province_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00071130", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Province_Agg_Fact because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Province_Dim  Car_Sales_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="province_id" */
    SELECT count(*) INTO NUMROWS
      FROM Province_Dim
      WHERE
        /* %JoinFKPK(:%New,Province_Dim," = "," AND") */
        :new.province_id = Province_Dim.province_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Province_Agg_Fact because Province_Dim does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Province_Agg_Fact because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_66", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Province_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Province_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_101", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Province_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_Province_Agg_Fact AFTER UPDATE ON Car_Sales_Province_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_Province_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00070aa4", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Province_Agg_Fact because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Province_Dim  Car_Sales_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="province_id" */
  SELECT count(*) INTO NUMROWS
    FROM Province_Dim
    WHERE
      /* %JoinFKPK(:%New,Province_Dim," = "," AND") */
      :new.province_id = Province_Dim.province_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Province_Agg_Fact because Province_Dim does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Province_Agg_Fact because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_66", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Province_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Province_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_101", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Province_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_Quater_Agg_Fact BEFORE INSERT ON Car_Sales_Quater_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_Quater_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Quarter  Car_Sales_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0008458a", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
    SELECT count(*) INTO NUMROWS
      FROM Quarter
      WHERE
        /* %JoinFKPK(:%New,Quarter," = "," AND") */
        :new.quarter_id = Quarter.quarter_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Quater_Agg_Fact because Quarter does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_48", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Quater_Agg_Fact because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Quater_Agg_Fact because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Quater_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Quater_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_96", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Quater_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_97", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Quater_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_Quater_Agg_Fact AFTER UPDATE ON Car_Sales_Quater_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_Quater_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Quarter  Car_Sales_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00084229", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
  SELECT count(*) INTO NUMROWS
    FROM Quarter
    WHERE
      /* %JoinFKPK(:%New,Quarter," = "," AND") */
      :new.quarter_id = Quarter.quarter_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Quater_Agg_Fact because Quarter does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_48", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Quater_Agg_Fact because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Quater_Agg_Fact because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Quater_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Quater_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_96", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Quater_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_97", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Quater_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_Town_Agg_Fact BEFORE INSERT ON Car_Sales_Town_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_Town_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0006ce33", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Town_Agg_Fact because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Town__Dim  Car_Sales_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="town_id" */
    SELECT count(*) INTO NUMROWS
      FROM Town__Dim
      WHERE
        /* %JoinFKPK(:%New,Town__Dim," = "," AND") */
        :new.town_id = Town__Dim.town_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Town_Agg_Fact because Town__Dim does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Town_Agg_Fact because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Town_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Town_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_99", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Town_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_Town_Agg_Fact AFTER UPDATE ON Car_Sales_Town_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_Town_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0006dd15", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Town_Agg_Fact because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Town__Dim  Car_Sales_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="town_id" */
  SELECT count(*) INTO NUMROWS
    FROM Town__Dim
    WHERE
      /* %JoinFKPK(:%New,Town__Dim," = "," AND") */
      :new.town_id = Town__Dim.town_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Town_Agg_Fact because Town__Dim does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Town_Agg_Fact because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Town_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Town_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_99", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Town_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_Week_Agg_Fact BEFORE INSERT ON Car_Sales_Week_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_Week_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Week  Car_Sales_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0006e893", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="week_id" */
    SELECT count(*) INTO NUMROWS
      FROM Week
      WHERE
        /* %JoinFKPK(:%New,Week," = "," AND") */
        :new.week_id = Week.week_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Week_Agg_Fact because Week does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Week_Agg_Fact because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Week_Agg_Fact because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Week_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Week_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_94", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Week_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_Week_Agg_Fact AFTER UPDATE ON Car_Sales_Week_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_Week_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Week  Car_Sales_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0006fa84", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="week_id" */
  SELECT count(*) INTO NUMROWS
    FROM Week
    WHERE
      /* %JoinFKPK(:%New,Week," = "," AND") */
      :new.week_id = Week.week_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Week_Agg_Fact because Week does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Week_Agg_Fact because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Week_Agg_Fact because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Week_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Week_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_94", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Week_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Sales_Year_Agg_Fact BEFORE INSERT ON Car_Sales_Year_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Sales_Year_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Year  Car_Sales_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0006c911", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
    SELECT count(*) INTO NUMROWS
      FROM Year
      WHERE
        /* %JoinFKPK(:%New,Year," = "," AND") */
        :new.year_id = Year.year_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Year_Agg_Fact because Year does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Year_Agg_Fact because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Features  Car_Sales_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Year_Agg_Fact because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Sales_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Year_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Sales_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Year_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_98", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Vehicle_Categories
      WHERE
        /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
        :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Sales_Year_Agg_Fact because Vehicle_Categories does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Sales_Year_Agg_Fact AFTER UPDATE ON Car_Sales_Year_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Sales_Year_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Year  Car_Sales_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0006d637", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
  SELECT count(*) INTO NUMROWS
    FROM Year
    WHERE
      /* %JoinFKPK(:%New,Year," = "," AND") */
      :new.year_id = Year.year_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Year_Agg_Fact because Year does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Year_Agg_Fact because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Features  Car_Sales_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Year_Agg_Fact because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Sales_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Year_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Sales_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Year_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_98", FK_COLUMNS="vehicle_category_code" */
  SELECT count(*) INTO NUMROWS
    FROM Vehicle_Categories
    WHERE
      /* %JoinFKPK(:%New,Vehicle_Categories," = "," AND") */
      :new.vehicle_category_code = Vehicle_Categories.vehicle_category_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Sales_Year_Agg_Fact because Vehicle_Categories does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_Base_Fact_Tabl BEFORE INSERT ON Car_Services_Base_Fact_Table for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_Base_Fact_Table 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Services_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0008e132", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Base_Fact_Table because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Base_Fact_Table because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Defect
      WHERE
        /* %JoinFKPK(:%New,Defect," = "," AND") */
        :new.defect_id = Defect.defect_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Base_Fact_Table because Defect does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Base_Fact_Table because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Base_Fact_Table because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_296", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Base_Fact_Table because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_301", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Base_Fact_Table because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Base_Fact_Table on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_314", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Base_Fact_Table because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_Base_Fact_Tabl AFTER UPDATE ON Car_Services_Base_Fact_Table for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_Base_Fact_Table 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Services_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0008f77a", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Base_Fact_Table because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Base_Fact_Table because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="defect_id" */
  SELECT count(*) INTO NUMROWS
    FROM Defect
    WHERE
      /* %JoinFKPK(:%New,Defect," = "," AND") */
      :new.defect_id = Defect.defect_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Base_Fact_Table because Defect does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_13", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Base_Fact_Table because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Base_Fact_Table because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_296", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Base_Fact_Table because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_301", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Base_Fact_Table because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Base_Fact_Table on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_314", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Base_Fact_Table because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_City_Agg_Fact BEFORE INSERT ON Car_Services_City_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_City_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car  Car_Services_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00069e59", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_City_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Services_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_City_Agg_Fact because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* City_Dim  Car_Services_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="city_id" */
    SELECT count(*) INTO NUMROWS
      FROM City_Dim
      WHERE
        /* %JoinFKPK(:%New,City_Dim," = "," AND") */
        :new.city_id = City_Dim.city_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_City_Agg_Fact because City_Dim does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_46", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_City_Agg_Fact because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_305", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_City_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_City_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_310", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_City_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_City_Agg_Fact AFTER UPDATE ON Car_Services_City_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_City_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car  Car_Services_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0006be84", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_39", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_City_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Services_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_City_Agg_Fact because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* City_Dim  Car_Services_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="city_id" */
  SELECT count(*) INTO NUMROWS
    FROM City_Dim
    WHERE
      /* %JoinFKPK(:%New,City_Dim," = "," AND") */
      :new.city_id = City_Dim.city_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_City_Agg_Fact because City_Dim does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_46", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_City_Agg_Fact because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_305", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_City_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_City_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_310", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_City_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_Country_Agg_Fa BEFORE INSERT ON Car_Services_Country_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_Country_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Services_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0008e06f", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Country_Agg_Fact because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Country_Dim  Car_Services_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="country_id" */
    SELECT count(*) INTO NUMROWS
      FROM Country_Dim
      WHERE
        /* %JoinFKPK(:%New,Country_Dim," = "," AND") */
        :new.country_id = Country_Dim.country_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Country_Agg_Fact because Country_Dim does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Country_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Defect
      WHERE
        /* %JoinFKPK(:%New,Defect," = "," AND") */
        :new.defect_id = Defect.defect_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Country_Agg_Fact because Defect does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Country_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_78", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Country_Agg_Fact because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_306", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Country_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Country_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_315", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Country_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_Country_Agg_Fa AFTER UPDATE ON Car_Services_Country_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_Country_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Services_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0008ebfa", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Country_Agg_Fact because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Country_Dim  Car_Services_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="country_id" */
  SELECT count(*) INTO NUMROWS
    FROM Country_Dim
    WHERE
      /* %JoinFKPK(:%New,Country_Dim," = "," AND") */
      :new.country_id = Country_Dim.country_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Country_Agg_Fact because Country_Dim does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Country_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="defect_id" */
  SELECT count(*) INTO NUMROWS
    FROM Defect
    WHERE
      /* %JoinFKPK(:%New,Defect," = "," AND") */
      :new.defect_id = Defect.defect_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Country_Agg_Fact because Defect does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_75", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Country_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_78", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Country_Agg_Fact because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_306", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Country_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Country_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_315", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Country_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_Month_Agg_Fact BEFORE INSERT ON Car_Services_Month_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_Month_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Month  Car_Services_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0008d518", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
    SELECT count(*) INTO NUMROWS
      FROM Month
      WHERE
        /* %JoinFKPK(:%New,Month," = "," AND") */
        :new.month_id = Month.month_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Month_Agg_Fact because Month does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Month_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Defect
      WHERE
        /* %JoinFKPK(:%New,Defect," = "," AND") */
        :new.defect_id = Defect.defect_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Month_Agg_Fact because Defect does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Month_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Month_Agg_Fact because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_294", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Month_Agg_Fact because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_303", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Month_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Month_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_312", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Month_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_Month_Agg_Fact AFTER UPDATE ON Car_Services_Month_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_Month_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Month  Car_Services_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0008f646", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
  SELECT count(*) INTO NUMROWS
    FROM Month
    WHERE
      /* %JoinFKPK(:%New,Month," = "," AND") */
      :new.month_id = Month.month_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Month_Agg_Fact because Month does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Month_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="defect_id" */
  SELECT count(*) INTO NUMROWS
    FROM Defect
    WHERE
      /* %JoinFKPK(:%New,Defect," = "," AND") */
      :new.defect_id = Defect.defect_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Month_Agg_Fact because Defect does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_29", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Month_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Month_Agg_Fact because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_294", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Month_Agg_Fact because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_303", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Month_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Month_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_312", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Month_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_Province_Agg_F BEFORE INSERT ON Car_Services_Province_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_Province_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Services_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0008fcf5", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Province_Agg_Fact because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Province_Dim  Car_Services_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="province_id" */
    SELECT count(*) INTO NUMROWS
      FROM Province_Dim
      WHERE
        /* %JoinFKPK(:%New,Province_Dim," = "," AND") */
        :new.province_id = Province_Dim.province_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Province_Agg_Fact because Province_Dim does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Province_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_66", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Defect
      WHERE
        /* %JoinFKPK(:%New,Defect," = "," AND") */
        :new.defect_id = Defect.defect_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Province_Agg_Fact because Defect does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Province_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_70", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Province_Agg_Fact because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_307", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Province_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Province_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_316", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Province_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_Province_Agg_F AFTER UPDATE ON Car_Services_Province_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_Province_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Services_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0008f7d1", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Province_Agg_Fact because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Province_Dim  Car_Services_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="province_id" */
  SELECT count(*) INTO NUMROWS
    FROM Province_Dim
    WHERE
      /* %JoinFKPK(:%New,Province_Dim," = "," AND") */
      :new.province_id = Province_Dim.province_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Province_Agg_Fact because Province_Dim does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Province_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_66", FK_COLUMNS="defect_id" */
  SELECT count(*) INTO NUMROWS
    FROM Defect
    WHERE
      /* %JoinFKPK(:%New,Defect," = "," AND") */
      :new.defect_id = Defect.defect_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Province_Agg_Fact because Defect does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_67", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Province_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_70", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Province_Agg_Fact because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_307", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Province_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Province_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_316", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Province_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_Quater_Agg_Fac BEFORE INSERT ON Car_Services_Quater_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_Quater_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Quarter  Car_Services_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0009008b", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
    SELECT count(*) INTO NUMROWS
      FROM Quarter
      WHERE
        /* %JoinFKPK(:%New,Quarter," = "," AND") */
        :new.quarter_id = Quarter.quarter_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Quater_Agg_Fact because Quarter does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Quater_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Defect
      WHERE
        /* %JoinFKPK(:%New,Defect," = "," AND") */
        :new.defect_id = Defect.defect_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Quater_Agg_Fact because Defect does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Quater_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Quater_Agg_Fact because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_300", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Quater_Agg_Fact because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_309", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Quater_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Quater_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_318", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Quater_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_Quater_Agg_Fac AFTER UPDATE ON Car_Services_Quater_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_Quater_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Quarter  Car_Services_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0008f82b", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
  SELECT count(*) INTO NUMROWS
    FROM Quarter
    WHERE
      /* %JoinFKPK(:%New,Quarter," = "," AND") */
      :new.quarter_id = Quarter.quarter_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Quater_Agg_Fact because Quarter does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Quater_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="defect_id" */
  SELECT count(*) INTO NUMROWS
    FROM Defect
    WHERE
      /* %JoinFKPK(:%New,Defect," = "," AND") */
      :new.defect_id = Defect.defect_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Quater_Agg_Fact because Defect does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_51", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Quater_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Quater_Agg_Fact because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_300", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Quater_Agg_Fact because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_309", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Quater_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Quater_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_318", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Quater_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_Town_Agg_Fact BEFORE INSERT ON Car_Services_Town_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_Town_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Services_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0008df13", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /* %JoinFKPK(:%New,Day," = "," AND") */
        :new.day_id = Day.day_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Town_Agg_Fact because Day does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Town__Dim  Car_Services_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="town_id" */
    SELECT count(*) INTO NUMROWS
      FROM Town__Dim
      WHERE
        /* %JoinFKPK(:%New,Town__Dim," = "," AND") */
        :new.town_id = Town__Dim.town_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Town_Agg_Fact because Town__Dim does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Town_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Defect
      WHERE
        /* %JoinFKPK(:%New,Defect," = "," AND") */
        :new.defect_id = Defect.defect_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Town_Agg_Fact because Defect does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Town_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Town_Agg_Fact because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_304", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Town_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Town_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_311", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Town_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_Town_Agg_Fact AFTER UPDATE ON Car_Services_Town_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_Town_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Services_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0008c5dc", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="day_id" */
  SELECT count(*) INTO NUMROWS
    FROM Day
    WHERE
      /* %JoinFKPK(:%New,Day," = "," AND") */
      :new.day_id = Day.day_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Town_Agg_Fact because Day does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Town__Dim  Car_Services_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="town_id" */
  SELECT count(*) INTO NUMROWS
    FROM Town__Dim
    WHERE
      /* %JoinFKPK(:%New,Town__Dim," = "," AND") */
      :new.town_id = Town__Dim.town_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Town_Agg_Fact because Town__Dim does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Town_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="defect_id" */
  SELECT count(*) INTO NUMROWS
    FROM Defect
    WHERE
      /* %JoinFKPK(:%New,Defect," = "," AND") */
      :new.defect_id = Defect.defect_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Town_Agg_Fact because Defect does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_37", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Town_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Town_Agg_Fact because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_304", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Town_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Town_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_311", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Town_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_Week_Agg_Fact BEFORE INSERT ON Car_Services_Week_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_Week_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Week  Car_Services_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0008cd3d", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="week_id" */
    SELECT count(*) INTO NUMROWS
      FROM Week
      WHERE
        /* %JoinFKPK(:%New,Week," = "," AND") */
        :new.week_id = Week.week_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Week_Agg_Fact because Week does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Week_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Defect
      WHERE
        /* %JoinFKPK(:%New,Defect," = "," AND") */
        :new.defect_id = Defect.defect_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Week_Agg_Fact because Defect does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Week_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Week_Agg_Fact because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_295", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Week_Agg_Fact because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_302", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Week_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Week_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_313", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Week_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_Week_Agg_Fact AFTER UPDATE ON Car_Services_Week_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_Week_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Week  Car_Services_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0008df82", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="week_id" */
  SELECT count(*) INTO NUMROWS
    FROM Week
    WHERE
      /* %JoinFKPK(:%New,Week," = "," AND") */
      :new.week_id = Week.week_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Week_Agg_Fact because Week does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Week_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="defect_id" */
  SELECT count(*) INTO NUMROWS
    FROM Defect
    WHERE
      /* %JoinFKPK(:%New,Defect," = "," AND") */
      :new.defect_id = Defect.defect_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Week_Agg_Fact because Defect does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_21", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Week_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Week_Agg_Fact because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_295", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Week_Agg_Fact because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_302", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Week_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Week_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_313", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Week_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Car_Services_Year_Agg_Fact BEFORE INSERT ON Car_Services_Year_Agg_Fact for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Car_Services_Year_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Year  Car_Services_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0008d928", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
    SELECT count(*) INTO NUMROWS
      FROM Year
      WHERE
        /* %JoinFKPK(:%New,Year," = "," AND") */
        :new.year_id = Year.year_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Year_Agg_Fact because Year does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /* %JoinFKPK(:%New,Parts," = "," AND") */
        :new.part_id = Parts.part_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Year_Agg_Fact because Parts does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Defect
      WHERE
        /* %JoinFKPK(:%New,Defect," = "," AND") */
        :new.defect_id = Defect.defect_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Year_Agg_Fact because Defect does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car  Car_Services_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="car_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car
      WHERE
        /* %JoinFKPK(:%New,Car," = "," AND") */
        :new.car_id = Car.car_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Year_Agg_Fact because Car does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_61", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Mechanic
      WHERE
        /* %JoinFKPK(:%New,Mechanic," = "," AND") */
        :new.mechanic_id = Mechanic.mechanic_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Year_Agg_Fact because Mechanic does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_299", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Year_Agg_Fact because Customer does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Models  Car_Services_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_308", FK_COLUMNS="model_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Models
      WHERE
        /* %JoinFKPK(:%New,Car_Models," = "," AND") */
        :new.model_code = Car_Models.model_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Year_Agg_Fact because Car_Models does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_Manufacturer  Car_Services_Year_Agg_Fact on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_317", FK_COLUMNS="manufacturer_ShortName" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Manufacturer
      WHERE
        /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
        :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Car_Services_Year_Agg_Fact because Car_Manufacturer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Car_Services_Year_Agg_Fact AFTER UPDATE ON Car_Services_Year_Agg_Fact for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Car_Services_Year_Agg_Fact 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Year  Car_Services_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0008ba6d", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
  SELECT count(*) INTO NUMROWS
    FROM Year
    WHERE
      /* %JoinFKPK(:%New,Year," = "," AND") */
      :new.year_id = Year.year_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Year_Agg_Fact because Year does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Year_Agg_Fact because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="defect_id" */
  SELECT count(*) INTO NUMROWS
    FROM Defect
    WHERE
      /* %JoinFKPK(:%New,Defect," = "," AND") */
      :new.defect_id = Defect.defect_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Year_Agg_Fact because Defect does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car  Car_Services_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_59", FK_COLUMNS="car_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car
    WHERE
      /* %JoinFKPK(:%New,Car," = "," AND") */
      :new.car_id = Car.car_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Year_Agg_Fact because Car does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_61", FK_COLUMNS="mechanic_id" */
  SELECT count(*) INTO NUMROWS
    FROM Mechanic
    WHERE
      /* %JoinFKPK(:%New,Mechanic," = "," AND") */
      :new.mechanic_id = Mechanic.mechanic_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Year_Agg_Fact because Mechanic does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_299", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Year_Agg_Fact because Customer does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Models  Car_Services_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Models"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_308", FK_COLUMNS="model_code" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Models
    WHERE
      /* %JoinFKPK(:%New,Car_Models," = "," AND") */
      :new.model_code = Car_Models.model_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Year_Agg_Fact because Car_Models does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_Manufacturer  Car_Services_Year_Agg_Fact on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_317", FK_COLUMNS="manufacturer_ShortName" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Manufacturer
    WHERE
      /* %JoinFKPK(:%New,Car_Manufacturer," = "," AND") */
      :new.manufacturer_ShortName = Car_Manufacturer.manufacturer_ShortName;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Car_Services_Year_Agg_Fact because Car_Manufacturer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Cars_Sold BEFORE INSERT ON Cars_Sold for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Cars_Sold 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_for_Sale  Cars_Sold on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0002044b", PARENT_OWNER="", PARENT_TABLE="Car_for_Sale"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_90", FK_COLUMNS="car_for_sale_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_for_Sale
      WHERE
        /* %JoinFKPK(:%New,Car_for_Sale," = "," AND") */
        :new.car_for_sale_id = Car_for_Sale.car_for_sale_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Cars_Sold because Car_for_Sale does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Cars_Sold on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_91", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Cars_Sold because Customer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Cars_Sold AFTER UPDATE ON Cars_Sold for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Cars_Sold 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car_for_Sale  Cars_Sold on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00020028", PARENT_OWNER="", PARENT_TABLE="Car_for_Sale"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_90", FK_COLUMNS="car_for_sale_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_for_Sale
    WHERE
      /* %JoinFKPK(:%New,Car_for_Sale," = "," AND") */
      :new.car_for_sale_id = Car_for_Sale.car_for_sale_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Cars_Sold because Car_for_Sale does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Cars_Sold on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_91", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Cars_Sold because Customer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_City_Dim BEFORE INSERT ON City_Dim for each row
-- ERwin Builtin Trigger
-- INSERT trigger on City_Dim 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Province_Dim  City_Dim on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000fce9", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="City_Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="province_id" */
    SELECT count(*) INTO NUMROWS
      FROM Province_Dim
      WHERE
        /* %JoinFKPK(:%New,Province_Dim," = "," AND") */
        :new.province_id = Province_Dim.province_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert City_Dim because Province_Dim does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_City_Dim AFTER DELETE ON City_Dim for each row
-- ERwin Builtin Trigger
-- DELETE trigger on City_Dim 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* City_Dim  Town__Dim on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00030db2", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Town__Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="city_id" */
    SELECT count(*) INTO NUMROWS
      FROM Town__Dim
      WHERE
        /*  %JoinFKPK(Town__Dim,:%Old," = "," AND") */
        Town__Dim.city_id = :old.city_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete City_Dim because Town__Dim exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* City_Dim  Car_Sales_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="city_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.city_id = :old.city_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete City_Dim because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* City_Dim  Car_Services_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="city_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.city_id = :old.city_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete City_Dim because Car_Services_City_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_City_Dim AFTER UPDATE ON City_Dim for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on City_Dim 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* City_Dim  Town__Dim on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00047fc5", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Town__Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="city_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.city_id <> :new.city_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Town__Dim
      WHERE
        /*  %JoinFKPK(Town__Dim,:%Old," = "," AND") */
        Town__Dim.city_id = :old.city_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update City_Dim because Town__Dim exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* City_Dim  Car_Sales_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="city_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.city_id <> :new.city_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.city_id = :old.city_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update City_Dim because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* City_Dim  Car_Services_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_43", FK_COLUMNS="city_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.city_id <> :new.city_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.city_id = :old.city_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update City_Dim because Car_Services_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Province_Dim  City_Dim on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="City_Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="province_id" */
  SELECT count(*) INTO NUMROWS
    FROM Province_Dim
    WHERE
      /* %JoinFKPK(:%New,Province_Dim," = "," AND") */
      :new.province_id = Province_Dim.province_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update City_Dim because Province_Dim does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Country_Dim AFTER DELETE ON Country_Dim for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Country_Dim 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Country_Dim  Province_Dim on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00035b73", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Province_Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="country_id" */
    SELECT count(*) INTO NUMROWS
      FROM Province_Dim
      WHERE
        /*  %JoinFKPK(Province_Dim,:%Old," = "," AND") */
        Province_Dim.country_id = :old.country_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Country_Dim because Province_Dim exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Country_Dim  Car_Sales_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="country_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.country_id = :old.country_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Country_Dim because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Country_Dim  Car_Services_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="country_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.country_id = :old.country_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Country_Dim because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Country_Dim AFTER UPDATE ON Country_Dim for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Country_Dim 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Country_Dim  Province_Dim on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0003bc1a", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Province_Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="country_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.country_id <> :new.country_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Province_Dim
      WHERE
        /*  %JoinFKPK(Province_Dim,:%Old," = "," AND") */
        Province_Dim.country_id = :old.country_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Country_Dim because Province_Dim exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Country_Dim  Car_Sales_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="country_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.country_id <> :new.country_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.country_id = :old.country_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Country_Dim because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Country_Dim  Car_Services_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_72", FK_COLUMNS="country_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.country_id <> :new.country_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.country_id = :old.country_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Country_Dim because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Customer BEFORE INSERT ON Customer for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Town__Dim  Customer on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000f142", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_105", FK_COLUMNS="town_id" */
    SELECT count(*) INTO NUMROWS
      FROM Town__Dim
      WHERE
        /* %JoinFKPK(:%New,Town__Dim," = "," AND") */
        :new.town_id = Town__Dim.town_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Customer because Town__Dim does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Customer AFTER DELETE ON Customer for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000d3a24", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_26", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_48", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Sales_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Customer_Preferences on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_80", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer_Preferences
      WHERE
        /*  %JoinFKPK(Customer_Preferences,:%Old," = "," AND") */
        Customer_Preferences.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Customer_Preferences exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Cars_Sold on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_91", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Cars_Sold
      WHERE
        /*  %JoinFKPK(Cars_Sold,:%Old," = "," AND") */
        Cars_Sold.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Cars_Sold exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_294", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_295", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_296", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Services_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_299", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Car_Services_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_300", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Customer because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Customer AFTER UPDATE ON Customer for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Customer 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00104457", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_10", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_18", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_26", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_48", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Sales_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_56", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Customer_Preferences on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_80", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Customer_Preferences
      WHERE
        /*  %JoinFKPK(Customer_Preferences,:%Old," = "," AND") */
        Customer_Preferences.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Customer_Preferences exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Cars_Sold on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Cars_Sold"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_91", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Cars_Sold
      WHERE
        /*  %JoinFKPK(Cars_Sold,:%Old," = "," AND") */
        Cars_Sold.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Cars_Sold exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_294", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_295", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_296", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Services_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_299", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Car_Services_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_300", FK_COLUMNS="customer_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.customer_id <> :new.customer_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.customer_id = :old.customer_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Customer because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Town__Dim  Customer on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_105", FK_COLUMNS="town_id" */
  SELECT count(*) INTO NUMROWS
    FROM Town__Dim
    WHERE
      /* %JoinFKPK(:%New,Town__Dim," = "," AND") */
      :new.town_id = Town__Dim.town_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Customer because Town__Dim does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Customer_Preferences BEFORE INSERT ON Customer_Preferences for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Customer_Preferences 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_Features  Customer_Preferences on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00021839", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_79", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Customer_Preferences because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Customer  Customer_Preferences on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_80", FK_COLUMNS="customer_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /* %JoinFKPK(:%New,Customer," = "," AND") */
        :new.customer_id = Customer.customer_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Customer_Preferences because Customer does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Customer_Preferences AFTER UPDATE ON Customer_Preferences for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Customer_Preferences 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car_Features  Customer_Preferences on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0002246a", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_79", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Customer_Preferences because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Customer  Customer_Preferences on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Customer"
    CHILD_OWNER="", CHILD_TABLE="Customer_Preferences"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_80", FK_COLUMNS="customer_id" */
  SELECT count(*) INTO NUMROWS
    FROM Customer
    WHERE
      /* %JoinFKPK(:%New,Customer," = "," AND") */
      :new.customer_id = Customer.customer_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Customer_Preferences because Customer does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Day BEFORE INSERT ON Day for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Day 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Week  Day on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000db60", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Day"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="week_id" */
    SELECT count(*) INTO NUMROWS
      FROM Week
      WHERE
        /* %JoinFKPK(:%New,Week," = "," AND") */
        :new.week_id = Week.week_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Day because Week does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Day AFTER DELETE ON Day for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Day 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000bf02f", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Sales_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Services_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Services_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Services_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Services_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Services_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Services_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Services_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Day  Car_Parts_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_141", FK_COLUMNS="day_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Day because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Day AFTER UPDATE ON Day for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Day 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000e41ae", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Sales_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Services_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_9", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Services_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Services_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_33", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Services_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_42", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Services_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Services_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_63", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Services_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_71", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Day  Car_Parts_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Day"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_141", FK_COLUMNS="day_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.day_id <> :new.day_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.day_id = :old.day_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Day because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Week  Day on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Day"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="week_id" */
  SELECT count(*) INTO NUMROWS
    FROM Week
    WHERE
      /* %JoinFKPK(:%New,Week," = "," AND") */
      :new.week_id = Week.week_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Day because Week does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Defect AFTER DELETE ON Defect for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Defect 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0008de5b", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Defect because Car_Services_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Defect because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Defect because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Defect because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Defect because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Defect because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_66", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Defect because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Defect  Car_Services_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="defect_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Defect because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Defect AFTER UPDATE ON Defect for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Defect 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000a39c9", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_12", FK_COLUMNS="defect_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.defect_id <> :new.defect_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Defect because Car_Services_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_20", FK_COLUMNS="defect_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.defect_id <> :new.defect_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Defect because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_28", FK_COLUMNS="defect_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.defect_id <> :new.defect_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Defect because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_36", FK_COLUMNS="defect_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.defect_id <> :new.defect_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Defect because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_50", FK_COLUMNS="defect_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.defect_id <> :new.defect_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Defect because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_58", FK_COLUMNS="defect_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.defect_id <> :new.defect_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Defect because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_66", FK_COLUMNS="defect_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.defect_id <> :new.defect_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Defect because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Defect  Car_Services_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Defect"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_74", FK_COLUMNS="defect_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.defect_id <> :new.defect_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.defect_id = :old.defect_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Defect because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_features_on_Car_for_Sale BEFORE INSERT ON features_on_Car_for_Sale for each row
-- ERwin Builtin Trigger
-- INSERT trigger on features_on_Car_for_Sale 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Car_Features  features_on_Car_for_Sale on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0002321e", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="features_on_Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_88", FK_COLUMNS="car_feature_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Features
      WHERE
        /* %JoinFKPK(:%New,Car_Features," = "," AND") */
        :new.car_feature_id = Car_Features.car_feature_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert features_on_Car_for_Sale because Car_Features does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Car_for_Sale  features_on_Car_for_Sale on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_for_Sale"
    CHILD_OWNER="", CHILD_TABLE="features_on_Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_89", FK_COLUMNS="car_for_sale_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_for_Sale
      WHERE
        /* %JoinFKPK(:%New,Car_for_Sale," = "," AND") */
        :new.car_for_sale_id = Car_for_Sale.car_for_sale_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert features_on_Car_for_Sale because Car_for_Sale does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_features_on_Car_for_Sale AFTER UPDATE ON features_on_Car_for_Sale for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on features_on_Car_for_Sale 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Car_Features  features_on_Car_for_Sale on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="0002365c", PARENT_OWNER="", PARENT_TABLE="Car_Features"
    CHILD_OWNER="", CHILD_TABLE="features_on_Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_88", FK_COLUMNS="car_feature_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_Features
    WHERE
      /* %JoinFKPK(:%New,Car_Features," = "," AND") */
      :new.car_feature_id = Car_Features.car_feature_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update features_on_Car_for_Sale because Car_Features does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Car_for_Sale  features_on_Car_for_Sale on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Car_for_Sale"
    CHILD_OWNER="", CHILD_TABLE="features_on_Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_89", FK_COLUMNS="car_for_sale_id" */
  SELECT count(*) INTO NUMROWS
    FROM Car_for_Sale
    WHERE
      /* %JoinFKPK(:%New,Car_for_Sale," = "," AND") */
      :new.car_for_sale_id = Car_for_Sale.car_for_sale_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update features_on_Car_for_Sale because Car_for_Sale does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Mechanic AFTER DELETE ON Mechanic for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Mechanic 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000a41cf", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_46", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_61", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_70", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Mechanic  Car_Services_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_78", FK_COLUMNS="mechanic_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Mechanic because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Mechanic AFTER UPDATE ON Mechanic for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Mechanic 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000bc70a", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_16", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_24", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_32", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_41", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_46", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_City_Agg_Fact,:%Old," = "," AND") */
        Car_Services_City_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_54", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_61", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_70", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Mechanic  Car_Services_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Mechanic"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_78", FK_COLUMNS="mechanic_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.mechanic_id <> :new.mechanic_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.mechanic_id = :old.mechanic_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Mechanic because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Month BEFORE INSERT ON Month for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Month 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Quarter  Month on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000edbb", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Month"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="quarter_id" */
    SELECT count(*) INTO NUMROWS
      FROM Quarter
      WHERE
        /* %JoinFKPK(:%New,Quarter," = "," AND") */
        :new.quarter_id = Quarter.quarter_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Month because Quarter does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Month AFTER DELETE ON Month for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Month 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Month  Week on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00040f6c", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Week"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="month_id" */
    SELECT count(*) INTO NUMROWS
      FROM Week
      WHERE
        /*  %JoinFKPK(Week,:%Old," = "," AND") */
        Week.month_id = :old.month_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Month because Week exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Month  Car_Sales_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.month_id = :old.month_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Month because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Month  Car_Services_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.month_id = :old.month_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Month because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Month  Car_Parts_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.month_id = :old.month_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Month because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Month AFTER UPDATE ON Month for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Month 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Month  Week on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0005af88", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Week"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="month_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.month_id <> :new.month_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Week
      WHERE
        /*  %JoinFKPK(Week,:%Old," = "," AND") */
        Week.month_id = :old.month_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Month because Week exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Month  Car_Sales_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.month_id <> :new.month_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.month_id = :old.month_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Month because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Month  Car_Services_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.month_id <> :new.month_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.month_id = :old.month_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Month because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Month  Car_Parts_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_25", FK_COLUMNS="month_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.month_id <> :new.month_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.month_id = :old.month_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Month because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Quarter  Month on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Month"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="quarter_id" */
  SELECT count(*) INTO NUMROWS
    FROM Quarter
    WHERE
      /* %JoinFKPK(:%New,Quarter," = "," AND") */
      :new.quarter_id = Quarter.quarter_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Month because Quarter does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Parts BEFORE INSERT ON Parts for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Parts 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Parts  Parts on child insert set null */
    /* ERWIN_RELATION:CHECKSUM="0003022f", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_116", FK_COLUMNS="part_id" */
    UPDATE Parts
      SET
        /* %SetFK(Parts,NULL) */
        Parts.part_id = NULL
      WHERE
        NOT EXISTS (
          SELECT * FROM Parts
            WHERE
              /* %JoinFKPK(:%New,Parts," = "," AND") */
              :new.part_id = Parts.part_id
        ) 
        /* %JoinPKPK(Parts,:%New," = "," AND") */
         and Parts.part_id = :new.part_id;

    /* ERwin Builtin Trigger */
    /* Parts_Type  Parts on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Type"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_134", FK_COLUMNS="part_type_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts_Type
      WHERE
        /* %JoinFKPK(:%New,Parts_Type," = "," AND") */
        :new.part_type_code = Parts_Type.part_type_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Parts because Parts_Type does not exist.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Level  Parts on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Level"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_135", FK_COLUMNS="part_level_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts_Level
      WHERE
        /* %JoinFKPK(:%New,Parts_Level," = "," AND") */
        :new.part_level_code = Parts_Level.part_level_code;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Parts because Parts_Level does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Parts AFTER DELETE ON Parts for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Parts 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000effdd", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Services_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Services_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Parts on parent delete set null */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_116", FK_COLUMNS="part_id" */
    UPDATE Parts
      SET
        /* %SetFK(Parts,NULL) */
        Parts.part_id = NULL
      WHERE
        /* %JoinFKPK(Parts,:%Old," = "," AND") */
        Parts.part_id = :old.part_id;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_118", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_149", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_160", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_166", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts  Car_Parts_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_172", FK_COLUMNS="part_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Parts AFTER UPDATE ON Parts for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Parts 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00140bd3", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_11", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Services_Base_Fact_Table,:%Old," = "," AND") */
        Car_Services_Base_Fact_Table.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Services_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_19", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_27", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Month_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Services_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_35", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_49", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_57", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_65", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Services_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_73", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Country_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Services_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* Parts  Parts on parent update set null */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_116", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    UPDATE Parts
      SET
        /* %SetFK(Parts,NULL) */
        Parts.part_id = NULL
      WHERE
        /* %JoinFKPK(Parts,:%Old," = ",",") */
        Parts.part_id = :old.part_id;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_118", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_149", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_160", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_166", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Car_Parts_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_172", FK_COLUMNS="part_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_id <> :new.part_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.part_id = :old.part_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts  Parts on child update no action */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_116", FK_COLUMNS="part_id" */
  SELECT count(*) INTO NUMROWS
    FROM Parts
    WHERE
      /* %JoinFKPK(:%New,Parts," = "," AND") */
      :new.part_id = Parts.part_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    :new.part_id IS NOT NULL AND
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Parts because Parts does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Type  Parts on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Type"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_134", FK_COLUMNS="part_type_code" */
  SELECT count(*) INTO NUMROWS
    FROM Parts_Type
    WHERE
      /* %JoinFKPK(:%New,Parts_Type," = "," AND") */
      :new.part_type_code = Parts_Type.part_type_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Parts because Parts_Type does not exist.'
    );
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Level  Parts on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Level"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_135", FK_COLUMNS="part_level_code" */
  SELECT count(*) INTO NUMROWS
    FROM Parts_Level
    WHERE
      /* %JoinFKPK(:%New,Parts_Level," = "," AND") */
      :new.part_level_code = Parts_Level.part_level_code;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Parts because Parts_Level does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Parts_Level AFTER DELETE ON Parts_Level for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Parts_Level 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Parts_Level  Parts on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0000d23b", PARENT_OWNER="", PARENT_TABLE="Parts_Level"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_135", FK_COLUMNS="part_level_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /*  %JoinFKPK(Parts,:%Old," = "," AND") */
        Parts.part_level_code = :old.part_level_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts_Level because Parts exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Parts_Level AFTER UPDATE ON Parts_Level for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Parts_Level 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Parts_Level  Parts on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0001054a", PARENT_OWNER="", PARENT_TABLE="Parts_Level"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_135", FK_COLUMNS="part_level_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_level_code <> :new.part_level_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /*  %JoinFKPK(Parts,:%Old," = "," AND") */
        Parts.part_level_code = :old.part_level_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts_Level because Parts exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Parts_Manufacturer AFTER DELETE ON Parts_Manufacturer for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Parts_Manufacturer 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00062d34", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_143", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts_Manufacturer because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_151", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts_Manufacturer because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_162", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts_Manufacturer because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_168", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts_Manufacturer because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Parts_Manufacturer  Car_Parts_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_176", FK_COLUMNS="pManufacturer_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts_Manufacturer because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Parts_Manufacturer AFTER UPDATE ON Parts_Manufacturer for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Parts_Manufacturer 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000708e2", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_143", FK_COLUMNS="pManufacturer_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.pManufacturer_code <> :new.pManufacturer_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts_Manufacturer because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_151", FK_COLUMNS="pManufacturer_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.pManufacturer_code <> :new.pManufacturer_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts_Manufacturer because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_162", FK_COLUMNS="pManufacturer_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.pManufacturer_code <> :new.pManufacturer_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts_Manufacturer because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_168", FK_COLUMNS="pManufacturer_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.pManufacturer_code <> :new.pManufacturer_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts_Manufacturer because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Parts_Manufacturer  Car_Parts_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Parts_Manufacturer"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_176", FK_COLUMNS="pManufacturer_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.pManufacturer_code <> :new.pManufacturer_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.pManufacturer_code = :old.pManufacturer_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts_Manufacturer because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Parts_Type AFTER DELETE ON Parts_Type for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Parts_Type 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Parts_Type  Parts on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0000db5d", PARENT_OWNER="", PARENT_TABLE="Parts_Type"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_134", FK_COLUMNS="part_type_code" */
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /*  %JoinFKPK(Parts,:%Old," = "," AND") */
        Parts.part_type_code = :old.part_type_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Parts_Type because Parts exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Parts_Type AFTER UPDATE ON Parts_Type for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Parts_Type 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Parts_Type  Parts on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00010a35", PARENT_OWNER="", PARENT_TABLE="Parts_Type"
    CHILD_OWNER="", CHILD_TABLE="Parts"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_134", FK_COLUMNS="part_type_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.part_type_code <> :new.part_type_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Parts
      WHERE
        /*  %JoinFKPK(Parts,:%Old," = "," AND") */
        Parts.part_type_code = :old.part_type_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Parts_Type because Parts exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Province_Dim BEFORE INSERT ON Province_Dim for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Province_Dim 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Country_Dim  Province_Dim on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000f0b5", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Province_Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="country_id" */
    SELECT count(*) INTO NUMROWS
      FROM Country_Dim
      WHERE
        /* %JoinFKPK(:%New,Country_Dim," = "," AND") */
        :new.country_id = Country_Dim.country_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Province_Dim because Country_Dim does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Province_Dim AFTER DELETE ON Province_Dim for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Province_Dim 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Province_Dim  City_Dim on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000342b7", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="City_Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="province_id" */
    SELECT count(*) INTO NUMROWS
      FROM City_Dim
      WHERE
        /*  %JoinFKPK(City_Dim,:%Old," = "," AND") */
        City_Dim.province_id = :old.province_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Province_Dim because City_Dim exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Province_Dim  Car_Sales_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="province_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.province_id = :old.province_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Province_Dim because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Province_Dim  Car_Services_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="province_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.province_id = :old.province_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Province_Dim because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Province_Dim AFTER UPDATE ON Province_Dim for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Province_Dim 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Province_Dim  City_Dim on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0004c441", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="City_Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_7", FK_COLUMNS="province_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.province_id <> :new.province_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM City_Dim
      WHERE
        /*  %JoinFKPK(City_Dim,:%Old," = "," AND") */
        City_Dim.province_id = :old.province_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Province_Dim because City_Dim exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Province_Dim  Car_Sales_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="province_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.province_id <> :new.province_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.province_id = :old.province_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Province_Dim because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Province_Dim  Car_Services_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Province_Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_64", FK_COLUMNS="province_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.province_id <> :new.province_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Province_Agg_Fact.province_id = :old.province_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Province_Dim because Car_Services_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Country_Dim  Province_Dim on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Country_Dim"
    CHILD_OWNER="", CHILD_TABLE="Province_Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_8", FK_COLUMNS="country_id" */
  SELECT count(*) INTO NUMROWS
    FROM Country_Dim
    WHERE
      /* %JoinFKPK(:%New,Country_Dim," = "," AND") */
      :new.country_id = Country_Dim.country_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Province_Dim because Country_Dim does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Quarter BEFORE INSERT ON Quarter for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Quarter 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Year  Quarter on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000db11", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Quarter"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="year_id" */
    SELECT count(*) INTO NUMROWS
      FROM Year
      WHERE
        /* %JoinFKPK(:%New,Year," = "," AND") */
        :new.year_id = Year.year_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Quarter because Year does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Quarter AFTER DELETE ON Quarter for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Quarter 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Quarter  Month on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000433d8", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Month"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="quarter_id" */
    SELECT count(*) INTO NUMROWS
      FROM Month
      WHERE
        /*  %JoinFKPK(Month,:%Old," = "," AND") */
        Month.quarter_id = :old.quarter_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Quarter because Month exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Quarter  Car_Sales_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.quarter_id = :old.quarter_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Quarter because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Quarter  Car_Services_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.quarter_id = :old.quarter_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Quarter because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Quarter  Car_Parts_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.quarter_id = :old.quarter_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Quarter because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Quarter AFTER UPDATE ON Quarter for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Quarter 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Quarter  Month on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0005db8a", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Month"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_3", FK_COLUMNS="quarter_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.quarter_id <> :new.quarter_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Month
      WHERE
        /*  %JoinFKPK(Month,:%Old," = "," AND") */
        Month.quarter_id = :old.quarter_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Quarter because Month exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Quarter  Car_Sales_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.quarter_id <> :new.quarter_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.quarter_id = :old.quarter_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Quarter because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Quarter  Car_Services_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.quarter_id <> :new.quarter_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Quater_Agg_Fact.quarter_id = :old.quarter_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Quarter because Car_Services_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Quarter  Car_Parts_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Quarter"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_47", FK_COLUMNS="quarter_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.quarter_id <> :new.quarter_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.quarter_id = :old.quarter_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Quarter because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Year  Quarter on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Quarter"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="year_id" */
  SELECT count(*) INTO NUMROWS
    FROM Year
    WHERE
      /* %JoinFKPK(:%New,Year," = "," AND") */
      :new.year_id = Year.year_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Quarter because Year does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Supplier AFTER DELETE ON Supplier for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0005932c", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_142", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Supplier because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_150", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Supplier because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_161", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Supplier because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_167", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Supplier because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Supplier  Car_Parts_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_177", FK_COLUMNS="supplier_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Supplier because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Supplier AFTER UPDATE ON Supplier for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Supplier 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00065792", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_142", FK_COLUMNS="supplier_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.supplier_id <> :new.supplier_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Parts_Base_Fact_Table,:%Old," = "," AND") */
        Car_Parts_Base_Fact_Table.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Supplier because Car_Parts_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_150", FK_COLUMNS="supplier_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.supplier_id <> :new.supplier_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Supplier because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_161", FK_COLUMNS="supplier_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.supplier_id <> :new.supplier_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Month_Agg_Fact.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Supplier because Car_Parts_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_167", FK_COLUMNS="supplier_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.supplier_id <> :new.supplier_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Quater_Agg_Fact.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Supplier because Car_Parts_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Supplier  Car_Parts_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Supplier"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_177", FK_COLUMNS="supplier_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.supplier_id <> :new.supplier_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.supplier_id = :old.supplier_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Supplier because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Town__Dim BEFORE INSERT ON Town__Dim for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Town__Dim 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* City_Dim  Town__Dim on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000e3b5", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Town__Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="city_id" */
    SELECT count(*) INTO NUMROWS
      FROM City_Dim
      WHERE
        /* %JoinFKPK(:%New,City_Dim," = "," AND") */
        :new.city_id = City_Dim.city_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Town__Dim because City_Dim does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Town__Dim AFTER DELETE ON Town__Dim for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Town__Dim 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Town__Dim  Car_Sales_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00030d0e", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="town_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.town_id = :old.town_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Town__Dim because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Town__Dim  Customer on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_105", FK_COLUMNS="town_id" */
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /*  %JoinFKPK(Customer,:%Old," = "," AND") */
        Customer.town_id = :old.town_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Town__Dim because Customer exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Town__Dim  Car_Services_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="town_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.town_id = :old.town_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Town__Dim because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Town__Dim AFTER UPDATE ON Town__Dim for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Town__Dim 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Town__Dim  Car_Sales_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0004855c", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="town_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.town_id <> :new.town_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.town_id = :old.town_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Town__Dim because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Town__Dim  Customer on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Customer"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_105", FK_COLUMNS="town_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.town_id <> :new.town_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Customer
      WHERE
        /*  %JoinFKPK(Customer,:%Old," = "," AND") */
        Customer.town_id = :old.town_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Town__Dim because Customer exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Town__Dim  Car_Services_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Town__Dim"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_34", FK_COLUMNS="town_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.town_id <> :new.town_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Town_Agg_Fact.town_id = :old.town_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Town__Dim because Car_Services_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* City_Dim  Town__Dim on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="City_Dim"
    CHILD_OWNER="", CHILD_TABLE="Town__Dim"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_6", FK_COLUMNS="city_id" */
  SELECT count(*) INTO NUMROWS
    FROM City_Dim
    WHERE
      /* %JoinFKPK(:%New,City_Dim," = "," AND") */
      :new.city_id = City_Dim.city_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Town__Dim because City_Dim does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Vehicle_Categories AFTER DELETE ON Vehicle_Categories for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Vehicle_Categories 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_for_Sale on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="000d756a", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_87", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_for_Sale
      WHERE
        /*  %JoinFKPK(Car_for_Sale,:%Old," = "," AND") */
        Car_for_Sale.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_for_Sale exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Base_Fact_Table on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_93", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_94", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Month_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_95", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_96", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Quater_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_97", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_98", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Town_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_99", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_City_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_100", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Province_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_101", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Vehicle_Categories  Car_Sales_Country_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_102", FK_COLUMNS="vehicle_category_code" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Vehicle_Categories because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Vehicle_Categories AFTER UPDATE ON Vehicle_Categories for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Vehicle_Categories 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_for_Sale on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="000faec5", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_for_Sale"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_87", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_for_Sale
      WHERE
        /*  %JoinFKPK(Car_for_Sale,:%Old," = "," AND") */
        Car_for_Sale.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_for_Sale exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Base_Fact_Table on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Base_Fact_Table"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_93", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Base_Fact_Table
      WHERE
        /*  %JoinFKPK(Car_Sales_Base_Fact_Table,:%Old," = "," AND") */
        Car_Sales_Base_Fact_Table.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Base_Fact_Table exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_94", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Month_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Month_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_95", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Month_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Month_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Month_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Month_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_96", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Quater_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Quater_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_97", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Quater_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Quater_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Quater_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Quater_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_98", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Town_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Town_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_99", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Town_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Town_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Town_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Town_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_City_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_City_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_100", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_City_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_City_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_City_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_City_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Province_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Province_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_101", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Province_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Province_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Province_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Province_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Vehicle_Categories  Car_Sales_Country_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Vehicle_Categories"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Country_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_102", FK_COLUMNS="vehicle_category_code" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.vehicle_category_code <> :new.vehicle_category_code
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Country_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Country_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Country_Agg_Fact.vehicle_category_code = :old.vehicle_category_code;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Vehicle_Categories because Car_Sales_Country_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER tI_Week BEFORE INSERT ON Week for each row
-- ERwin Builtin Trigger
-- INSERT trigger on Week 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Month  Week on child insert restrict */
    /* ERWIN_RELATION:CHECKSUM="0000e21c", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Week"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="month_id" */
    SELECT count(*) INTO NUMROWS
      FROM Month
      WHERE
        /* %JoinFKPK(:%New,Month," = "," AND") */
        :new.month_id = Month.month_id;
    IF (
      /* %NotnullFK(:%New," IS NOT NULL AND") */
      
      NUMROWS = 0
    )
    THEN
      raise_application_error(
        -20002,
        'Cannot insert Week because Month does not exist.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER  tD_Week AFTER DELETE ON Week for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Week 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Week  Day on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="0003fe48", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Day"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="week_id" */
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /*  %JoinFKPK(Day,:%Old," = "," AND") */
        Day.week_id = :old.week_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Week because Day exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Week  Car_Sales_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="week_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.week_id = :old.week_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Week because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Week  Car_Services_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="week_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.week_id = :old.week_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Week because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Week  Car_Parts_Week_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_147", FK_COLUMNS="week_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.week_id = :old.week_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Week because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Week AFTER UPDATE ON Week for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Week 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Week  Day on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00056f3e", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Day"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_1", FK_COLUMNS="week_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.week_id <> :new.week_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Day
      WHERE
        /*  %JoinFKPK(Day,:%Old," = "," AND") */
        Day.week_id = :old.week_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Week because Day exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Week  Car_Sales_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="week_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.week_id <> :new.week_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Week_Agg_Fact.week_id = :old.week_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Week because Car_Sales_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Week  Car_Services_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_17", FK_COLUMNS="week_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.week_id <> :new.week_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Week_Agg_Fact.week_id = :old.week_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Week because Car_Services_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Week  Car_Parts_Week_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Week"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Week_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_147", FK_COLUMNS="week_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.week_id <> :new.week_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Week_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Week_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Week_Agg_Fact.week_id = :old.week_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Week because Car_Parts_Week_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Month  Week on child update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Month"
    CHILD_OWNER="", CHILD_TABLE="Week"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_2", FK_COLUMNS="month_id" */
  SELECT count(*) INTO NUMROWS
    FROM Month
    WHERE
      /* %JoinFKPK(:%New,Month," = "," AND") */
      :new.month_id = Month.month_id;
  IF (
    /* %NotnullFK(:%New," IS NOT NULL AND") */
    
    NUMROWS = 0
  )
  THEN
    raise_application_error(
      -20007,
      'Cannot update Week because Month does not exist.'
    );
  END IF;


-- ERwin Builtin Trigger
END;
/


CREATE  TRIGGER  tD_Year AFTER DELETE ON Year for each row
-- ERwin Builtin Trigger
-- DELETE trigger on Year 
DECLARE NUMROWS INTEGER;
BEGIN
    /* ERwin Builtin Trigger */
    /* Year  Quarter on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00040735", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Quarter"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="year_id" */
    SELECT count(*) INTO NUMROWS
      FROM Quarter
      WHERE
        /*  %JoinFKPK(Quarter,:%Old," = "," AND") */
        Quarter.year_id = :old.year_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Year because Quarter exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Year  Car_Sales_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.year_id = :old.year_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Year because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Year  Car_Services_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.year_id = :old.year_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Year because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;

    /* ERwin Builtin Trigger */
    /* Year  Car_Parts_Year_Agg_Fact on parent delete restrict */
    /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.year_id = :old.year_id;
    IF (NUMROWS > 0)
    THEN
      raise_application_error(
        -20001,
        'Cannot delete Year because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;


-- ERwin Builtin Trigger
END;
/

CREATE  TRIGGER tU_Year AFTER UPDATE ON Year for each row
-- ERwin Builtin Trigger
-- UPDATE trigger on Year 
DECLARE NUMROWS INTEGER;
BEGIN
  /* ERwin Builtin Trigger */
  /* Year  Quarter on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="0004a1ab", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Quarter"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_4", FK_COLUMNS="year_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.year_id <> :new.year_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Quarter
      WHERE
        /*  %JoinFKPK(Quarter,:%Old," = "," AND") */
        Quarter.year_id = :old.year_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Year because Quarter exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Year  Car_Sales_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Sales_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.year_id <> :new.year_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Sales_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Sales_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Sales_Year_Agg_Fact.year_id = :old.year_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Year because Car_Sales_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Year  Car_Services_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Services_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.year_id <> :new.year_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Services_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Services_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Services_Year_Agg_Fact.year_id = :old.year_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Year because Car_Services_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;

  /* ERwin Builtin Trigger */
  /* Year  Car_Parts_Year_Agg_Fact on parent update restrict */
  /* ERWIN_RELATION:CHECKSUM="00000000", PARENT_OWNER="", PARENT_TABLE="Year"
    CHILD_OWNER="", CHILD_TABLE="Car_Parts_Year_Agg_Fact"
    P2C_VERB_PHRASE="", C2P_VERB_PHRASE="", 
    FK_CONSTRAINT="R_55", FK_COLUMNS="year_id" */
  IF
    /* %JoinPKPK(:%Old,:%New," <> "," OR ") */
    :old.year_id <> :new.year_id
  THEN
    SELECT count(*) INTO NUMROWS
      FROM Car_Parts_Year_Agg_Fact
      WHERE
        /*  %JoinFKPK(Car_Parts_Year_Agg_Fact,:%Old," = "," AND") */
        Car_Parts_Year_Agg_Fact.year_id = :old.year_id;
    IF (NUMROWS > 0)
    THEN 
      raise_application_error(
        -20005,
        'Cannot update Year because Car_Parts_Year_Agg_Fact exists.'
      );
    END IF;
  END IF;


-- ERwin Builtin Trigger
END;
/

