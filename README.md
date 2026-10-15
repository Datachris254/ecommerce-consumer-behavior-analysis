E-commerce Consumer Behavior Analysis
SQL Server and Power BI Analytics Project

Project Overview
This project explores e-commerce consumer purchasing behavior using SQL Server and Power BI. It focuses on revenue analysis, purchasing patterns, customer segments, product categories, and customer satisfaction.

The objective is to transform customer and purchase data into useful business insights that can support decision-making in e-commerce businesses.

Tools Used
SQL Server: Data querying, calculations, and analysis.
Power BI: Data visualization and dashboard development.
SQL: Revenue analysis and customer segmentation.

Business Questions
This project explores the following questions:

a) What is the total revenue calculated from purchase amounts and purchase frequency?
b) What is the average purchase amount?
c) How many customer records are in the dataset?
d) What is the average customer satisfaction score?
e) Which purchase categories generate the most revenue?
f) How does revenue differ by gender?
g) How does revenue vary across income levels?
h) Which months generate the most revenue?

SQL Analysis
The SQL script contains queries for:
a) Exploring the source dataset.
b) Calculating revenue for individual records.
c) Calculating total revenue.
d) Calculating average purchase amount.
e) Counting customer IDs.
f) Calculating average customer satisfaction.
g) Comparing revenue across purchase categories.
h) Analyzing revenue by gender.
i) Analyzing revenue by income level.
j) Analyzing monthly revenue.

SQL Scripts
use [PROJECT 2]
select *
from Ecommerce_Consumer_Behavior_Analysis_Data

select (Purchase_Amount*  Frequency_of_Purchase) as Revenue
from Ecommerce_Consumer_Behavior_Analysis_Data

select sum (Purchase_Amount*  Frequency_of_Purchase) as Total_revenue
from Ecommerce_Consumer_Behavior_Analysis_Data

select AVG( Purchase_Amount) AS AVG_Purchaseamount
from Ecommerce_Consumer_Behavior_Analysis_Data

select count(Customer_id) as Total_Orders
from Ecommerce_Consumer_Behavior_Analysis_Data

Select AVG(Customer_Satisfaction) as AVG_customer_Satisfaction
from Ecommerce_Consumer_Behavior_Analysis_Data

select Purchase_Category,sum (Purchase_Amount *  Frequency_of_Purchase) as Revenue
from Ecommerce_Consumer_Behavior_Analysis_Data
group by Purchase_Category 
order by Revenue 

SELECT 
    Gender, 
    SUM(COALESCE(CAST(Purchase_Amount AS DECIMAL(18,2)),0) * 
        COALESCE(CAST(Frequency_of_Purchase AS DECIMAL(18,2)),0)) AS Revenue
FROM Ecommerce_Consumer_Behavior_Analysis_Data
GROUP BY Gender
ORDER BY Revenue DESC;

select Income_Level, sum(Purchase_Amount *  Frequency_of_Purchase) as Revenue
from Ecommerce_Consumer_Behavior_Analysis_Data
group by Income_Level
order by  Revenue DESC

SELECT DATENAME(MONTH, Time_of_Purchase) AS Month, MONTH(Time_of_Purchase) AS Month_Number,SUM(Purchase_Amount * Frequency_of_Purchase) AS Revenue
FROM Ecommerce_Consumer_Behavior_Analysis_Data
GROUP BY DATENAME(MONTH, Time_of_Purchase),MONTH(Time_of_Purchase)
ORDER BY Revenue desc;

Power BI Dashboard
The Power BI dashboard presents the analysis visually, helping users explore purchasing patterns and compare performance across customer groups.
<img width="1366" height="730" alt="Screenshot (1302)" src="https://github.com/user-attachments/assets/28a957be-c014-4648-b0bf-558d905ce007" />
<img width="1366" height="721" alt="Screenshot (1303)" src="https://github.com/user-attachments/assets/371dbf8d-0c65-46f5-be54-2ff696959d28" />



LinkedIn: https://www.linkedin.com/in/christopher-kori-148021303/



