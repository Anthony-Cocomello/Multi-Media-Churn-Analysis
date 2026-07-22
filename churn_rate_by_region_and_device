SELECT
  `Region`,
  `Device Used Most Often`,
  COUNT(`Customer ID`) AS Total_Customers,
  COUNTIF(`Churn Status _Yes_No_` = true) AS Cancelled_Users,
  ROUND((COUNTIF(`Churn Status _Yes_No_` = true) / COUNT(`Customer ID`)) * 100, 2) AS Churn_Rate_Percentage
FROM
  `norse-antenna-495118-q8.netflix_streaming_analytics.user_profiles`
GROUP BY
  `Region`,
  `Device Used Most Often`
ORDER BY
  Churn_Rate_Percentage DESC
LIMIT
  10  
