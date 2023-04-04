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
Three different models were tested for performance in their ability to predict overall CO2 emissions based on CO2 emissions of individual products. The Extra Trees Regressor model had the highest R2 value and lowest MSE and MAE values. Also, as seen in the plot below, no predicted values differed dramatically from actual values. For these reasons we decided to use the ExtraTreesRegressor for our machine learning model. 

<img src="https://github.com/natehahn/03_Final_Project/blob/main/Images/ExtraTrees_PerformanceMetrics.png">

<img src="https://github.com/natehahn/03_Final_Project/blob/main/Images/ExtraTrees_TruevsPredicted.png" width="500" height="400">

Another reason for choosing this model was that it allowed us to sort features based on importance. This will help us tune the model by excluding unimportant features and provides us with insightful information about the data by telling us which features are most important in predicting overall CO2 levels. 

<img src="https://github.com/natehahn/03_Final_Project/blob/main/Images/ExtraTrees_FeatureImportance.png" width="650" height="400">

This model appeared to tell us that categories 3, 19, and 32 were the most significant features. These correspond to barley, maize, and poultry meat respectively with maize being the most important feature in predicting CO2 emissions by far. This does not mean that maize production emmits the most CO2 but that the amount of CO2 produced by maize production in any given country during any given year between 2000 and 2020 correlates very closely with the overall C02 emissions of that country during that year. 

## Investigative Query

1. Does the amount of agricultural production predict the CO2 emissions of a country?
2. What are the top (10) and low (10) products being produced by countries with higher CO2 emissions?
3. Can we predict the year based on CO2 emissions of a country?
4. Is there a correlation between population and the rate of production impacting CO2 emissions?

## Findings  

## Dashboard 
[CO2 Emissions in the World](https://public.tableau.com/app/profile/nathan.hahn1273/viz/CO2Emission_16803796768950/CO2Emissions?publish=yes)
