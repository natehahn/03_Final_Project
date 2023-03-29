--This schema creates the five tables for the database

--CO2_emission_by_countries holds the amount of CO2 a country produced overall for each year (2000-2020).

--Production_Crops_Data hold the amount of several edible agricultural products produced by a country in each
--year (2000-2020)

--Food_emissions holds the amount of CO2 (kg per tonne) a food item from a particular category generates in its production
--This includes a breakdown of emmisions created in various activities of food production

--Product_Translation_Table_Vert allows the placement of specific food items in the Production_Crops_Data table to be placed into the categories
--in the Food_emissions table using the Item_code variable

--World_Pop_Data contains the population of the countries in the other tables by year. The Country_Code variable is compatible to the save variable in 
--Production_Crops table and theCO2_emission_by_countries table


CREATE TABLE CO2_emission_by_countries (
  Primary_CO2 int NOT Null,
  Country_Code int NOT Null,
  country varchar NOT NULL,
  Year_ET int NOT NULL,
  CO2_emissions_tonnes real NOT NULL,
  Primary Key (Primary_CO2)
);

CREATE TABLE Production_Crops_Data (
  Primary_Prod_Crop int NOT Null,  
  Country_Code int NOT Null,
  area varchar NOT NULL,
  Year_PC int NOT Null, 
  item_code_PC real NOT NULL,
  item varchar NOT NULL,
  Unit varchar NOT NULL,
  Production real NOT NULL,
  Primary Key (Primary_Prod_Crop)
);

CREATE TABLE Food_emissions (
  Category_Code int NOT NULL,
  Food_product varchar NOT NULL,
  land_use_change real NOT NULL,
  Animal_Feed real NOT NULL,
  Farm real NOT NULL,
  Processing real NOT NULL,
  Transport real NOT NULL,
  Packging real NOT NULL,
  Retail real NOT NULL,
  Total_emissions real NOT NULL,
  emissions_KGs_per_tonne real NOT NULL,
  PRIMARY KEY (category_code)
);

CREATE TABLE Product_Translation_Table_Vert (
  Item_Code_CPC_num real NOT NULL,
  Item_Code_CPC_text varchar NOT NULL,
  Item varchar NOT NULL,
  Category_Code int NOT NULL,
  Food_Product_Categories varchar NOT NULL,
  PRIMARY KEY (Item_Code_CPC_num)	
);

CREATE TABLE World_Pop_Data (
  Primary_Pop int NOT NULL,
  Country_Code int NOT NULL,
  Country_Name varchar NOT NULL,
  Year_Pop int NOT NULL,
  Population real NOT NULL,
  Primary Key (Primary_Pop)
);