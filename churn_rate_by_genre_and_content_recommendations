SELECT
  `Genre Preference` AS Favorite_Genre,
CASE
  WHEN `Genre Preference` = 'Sci-Fi' THEN 'Stranger Things / Inception'
  WHEN `Genre Preference` = 'Romance' THEN 'The Notebook / Bridgerton'
  WHEN `Genre Preference` = 'Drama' THEN 'Breaking Bad / Succession'
  WHEN `Genre Preference` = 'Thriller' THEN 'The Departed / Shutter Island'
  WHEN `Genre Preference` = 'Documentary' THEN 'The Last Dance / Planet Earth II'
  WHEN `Genre Preference` = 'Action' THEN 'The Dark Knight / Mad Max'
  WHEN `Genre Preference` = 'Comedy' THEN 'The Office / Superbad'
  ELSE 'Other Content'
END AS Recommended_Top_Titles,
COUNT(`Customer ID`) AS Total_Customers,
COUNTIF(`Churn Status _Yes_No_` = true) AS Total_Cancelled_Subscribers,
ROUND((COUNTIF(`Churn Status _Yes_No_` = true) / COUNT(`Customer ID`)) * 100, 2) AS Genre_Churn_Rate_Percentage
FROM
  `norse-antenna-495118-q8.netflix_streaming_analytics.user_profiles`
GROUP BY
  1, 2
ORDER BY
  Genre_Churn_Rate_Percentage DESC
