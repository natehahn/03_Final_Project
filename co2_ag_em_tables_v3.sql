-- This schema defines three tables: CO2_emission_by_countries, Production_Crops_Data, and Food_emissions.
-- The first table stores data on CO2 emissions by country,
-- the second table stores data on agricultural production by country, and
-- the third table stores data on food emissions.
-- The schema also defines a translation table, which maps item codes to text and numeric values.
-- This table will be used to translate item codes into human-readable text and to calculate numeric values,
-- such as the percentage of world CO2 emissions by country.

CREATE TABLE CO2_emission_by_countries (
  country varchar NOT NULL,
  code varchar NOT NULL,
  annum int NOT NULL,
  CO2_emissions_tonnes real NOT NULL,
  population int NOT NULL,
  PRIMARY KEY (country,annum)
);

CREATE TABLE Production_Crops_Data (
  country varchar NOT NULL,
  annum int NOT NULL,
  area varchar NOT NULL,
  item_code varchar NOT NULL,
  item varchar NOT NULL,
  production real NOT NULL,
  FOREIGN KEY (country,annum) REFERENCES CO2_emission_by_countries (country, annum),
  PRIMARY KEY (country, annum, item_code)
);

CREATE TABLE Food_emissions (
  food_product varchar NOT NULL,
  land_use_change varchar NOT NULL,
  animal_feed varchar NOT NULL,
  farm varchar NOT NULL,
  processing varchar NOT NULL,
  transport varchar NOT NULL,
  packing varchar NOT NULL,
  retail varchar NOT NULL,
  total_emissions real NOT NULL,
  eutrophying_emissions_per_kilogram real NOT NULL,
  PRIMARY KEY (food_product)
);

CREATE TABLE Product_Translation_Table_Vert (
  item_code_CPC_text varchar NOT NULL,
  item_code_CPC_num real NOT NULL,
  item varchar NOT NULL,
  category_code int NOT NULL,
  Food_Product_Categories varchar NOT NULL,
  PRIMARY KEY (item_code_CPC_num)
);