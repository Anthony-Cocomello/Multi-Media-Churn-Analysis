SELECT
  `Subscription Plan`,
  COUNTIF(`Churn Status _Yes_No_` = true) AS cancelled_users,
  COUNT(`Customer ID`) AS total_users,
  ROUND((COUNTIF(`Churn Status _Yes_No_` = true) / COUNT(`Customer ID`)) * 100, 2) AS Tier_Churn_Rate_Percentage
FROM
  `norse-antenna-495118-q8.netflix_streaming_analytics.user_profiles` 
GROUP BY
  `Subscription Plan`
ORDER BY
  Tier_Churn_Rate_Percentage DESC
