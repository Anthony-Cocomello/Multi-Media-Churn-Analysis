SELECT
  `Churn Status _Yes_No_` AS Churn_Status,
  COUNT(`Customer ID`) AS Total_Customers,
  ROUND(AVG(`Customer Satisfaction Score _1-10_`), 2) AS AVG_Satisfaction_Score,
  ROUND(AVG(`Daily Watch Time _Hours_`), 2) AS AVG_Daily_Watch_Hours,
  ROUND(AVG(`Engagement Rate _1-10_`), 2) AS AVG_Engagement_Rate,
  ROUND(AVG(`Support Queries Logged`), 2) AS AVG_Support_Queries
FROM
  `norse-antenna-495118-q8.netflix_streaming_analytics.user_profiles` 
GROUP BY
  `Churn Status _Yes_No_`  
