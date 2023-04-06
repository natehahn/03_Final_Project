# 03_Final_Project

## Topic
**Food producation rates impacting CO2 emmisions based by countries.  We chose this dataset because we were interested in whether we could identify casuality of a specific type of product with a countries overall CO2 emissions.  Population can also have an effect on this, including the industry level of the country.  We didn't go too far down that path because that would have been a very complex program.**

## Datasets 

1. Database 1 **CO2 Emissions by Country | Kaggle** URL: <https://www.kaggle.com/datasets/ggsri123/co2-emissions-from-fossil-fuels>
2. Database 2 **Environmental Impact of Food | Kaggle** <https://www.kaggle.com/datasets/selfvivek/environment-impact-of-food-production>
3. Database 3 **Population | WorldBank** <https://www.kaggle.com/datasets/kaggleashwin/population-dataset>
4. Database 4 **Emissons from Food | Enviormantal Impact of Food| Kaggle** <https://www.kaggle.com/datasets/selfvivek/environment-impact-of-food-production>



## Description of Data
The datasets we will be examining in this analysis come from Kaggle and WorldBank report. We will be comparing the the relation of the product production impact on a countries CO2 emisson rates between the years 2000 to 2020



## Tools and Technologies 

Jupyter Notebook<br>
Python<br>
Tableau Public<br>
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
2. What products being produced by countries have the highest and lowest CO2 emissions?
3. Can we predict the year based on CO2 emissions of a country?
4. Is there a correlation between population and the rate of production impacting CO2 emissions?

## Findings  
In this analysis compared the CO2 emission rates of countries based on categorized food product production. Through cleaning the data, building a database and dashboard, and exploring the data with various tools and machine learning algorithms, we were able to fulfil the analysis's purpose; find correlations between selected features in our data including, the name of the country producing the most emissions, the food products whose productions most or least significant impact the rates of emission and if population plays factor into rates. 

The analysis consisted of almost 9 million data points that we were able to extract in an impacting and reusable code set. Rather than taking a conventional route to the data we looked to multiple sources and utilized SQL to create a composed master table of all the selected features of the 4 original data bases that made the data suitable for analysis.  

We chose this dataset because we were interested in whether we could identify causality of a specific type of product with a country’s overall CO2 emissions. Population can also have an effect on this, including the level of industrial development of the country. We didn't go too far down that path because that would have been a very complex program.

### Investigative Query

1. **Does the amount of agricultural production predict the CO2 emissions of a country?**

2. **What products being produced by countries have the highest and lowest emissions?**

3. **Can we predict the year based on CO2 emissions of a country?**

4. **Is there a correlation between population and the rate of production impacting CO2 emissions?**

### Exploratory Data Analysis
What products being produced by countries have the highest emissions?
Throught the Tableau dashboard we are able to see what food products have the highest and lowest impacting CO2 emissions. Using the heatmap below the foods that have the most global impact in production are:

- Sugar Cane at 34,684,911,578 Tonnes

- Maize(Corn) 18,467,107,546 Tonnes

- Rice 14,367,247,693 Tonnes

- Wheat 14,130,705,994 Tonnes


## Dashboard 
[CO2 Emissions in the World](https://public.tableau.com/app/profile/nathan.hahn1273/viz/CO2Emission_16803796768950/CO2Emissions?publish=yes)


Throughout the data the structure of the emissions over years was consistent with a gradual increase in other corresponding factors. Looking at the 43 food product categories that were broken down and evaluated a similar trend was seen among all points. Since 2000 when our data began there has been a gradual linear increase in the over all CO2 production from all factors of query.

Utilizing a matrix through Plotly Ex became instrumental in comparing the data in a comparative and visually appealing manor. With 220 individual countries x the 43 food product categories x the 20 years of data per country there is 189,200 factors. Through the matrix scatter plot we are able to individually group points of query and how they interact while keeping data integrity across the set. This code block as well as others was utilized for all 43 Products and see unknown trends. Another notable finding was in the production of barley (beer), it was one of the higher producing foods but was not a cornered industry like sugar cane being predominantly from Brazil and India. There was a fairly even country wide distribution of barely production and corresponding CO2 emission. People like beer!

