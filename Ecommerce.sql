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







