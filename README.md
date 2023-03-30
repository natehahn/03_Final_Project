# 03_Final_Project

## Topic
**Food producation rates impacting CO2 emmisions based by countries.  We chose this dataset because we were interested in whether we could identify casuality of a specific type of product with a countries overall CO2 emissions.  Population can also have an effect on this, including the industry level of the country.  We didn't go too far down that path because that would have been a very complex program.**

## Datasets 

1. Database 1 **CO2 Emissions by Country | Kaggle**
2. Database 2 **Environmental Impact of Food | Kaggle**
3. Database 3 **Population | WorldBank**
4. Database 4 **Emissons from Food | Enviormantal Impact of Food| Kaggle**



## Description of Data
The datasets we will be examining in this analysis come from Kaggle and WorldBank report. We will be comparing the the relation of the product production impact on a countries CO2 emisson rates between the years 2000 to 2020



## Tools and Technologies 

Jupyter Notebook<br>
Python<br>
Tableau Public<br>
Blender<br>
Google Presentation<br>
PgAdmin4

## Data Cleaning
Data was cleaned using Excel, SQL, and Python. Most of the standardization and transformation as done in Excel. Files were joined using SQL in a PGAdmin database. Data was aggregated into categories using Python in Jupyter notebook with the Pandas library.

## Machine Learning Model
Three different models were tested for performance in their ability to predict overall CO2 emissions based on CO2 emissions of individual products. The Extra Trees Regressor model had the highest R2 value and lowest MSE and MAE values so we decided to use Extra Trees for our machine learning model. 

## Investigative Query

1. Does the amount of agricultural production predict the CO2 emissions of a country?
2. What are the top (10) and low (10) products being produced by countries with higher CO2 emissions?
3. Can we predict the year based on CO2 emissions of a country?
4. Is there a correlation between population and the rate of production impacting CO2 emissions?

## Findings  

## Dashboard 
[CO2 Emissions in the World](https://public.tableau.com/app/profile/nathan.hahn1273/viz/CO2EmissionsintheWorld_16801425527960/Map?publish=yes)
