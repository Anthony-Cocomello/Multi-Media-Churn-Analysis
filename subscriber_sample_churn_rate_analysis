SELECT
  COUNTIF(`Churn Status _Yes_No_` = true) AS Cancelled_Users,
  COUNT(`Customer ID`) AS Total_Users,
  ROUND((COUNTIF(`Churn Status _Yes_No_` = true) / COUNT(`Customer ID`)) * 100, 2) AS Churn_Rate_Percentage
FROM
  `norse-antenna-495118-q8.netflix_streaming_analytics.user_profiles`
