SELECT
  Performer,
  COUNT(index) AS total_number_of_streams
FROM
  `norse-antenna-495118-q8.netflix_streaming_analytics.view_history`
GROUP BY
  Performer
ORDER BY
  total_number_of_streams DESC
LIMIT
  10
