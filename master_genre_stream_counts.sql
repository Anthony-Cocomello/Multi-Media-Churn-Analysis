SELECT
  REGEXP_REPLACE(cf.spotify_genre, r"[\[\]']", "") AS clean_spotify_genre,
  COUNT(vh.index) AS total_streams,
  COUNT(DISTINCT vh.SongID) AS unique_songs_played
FROM
  `norse-antenna-495118-q8.netflix_streaming_analytics.view_history` AS vh
INNER JOIN
  `norse-antenna-495118-q8.netflix_streaming_analytics.content_features` AS cf  
ON
  vh.SongID = cf.SongID
WHERE
  cf.spotify_genre IS NOT NULL
  AND cf.spotify_genre != '[]'
GROUP BY
  clean_spotify_genre
ORDER BY
  total_streams DESC
LIMIT
  20
