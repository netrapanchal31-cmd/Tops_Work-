USE music_streaming_App;

SELECT artist, COUNT(id) AS total_songs
FROM playlist
GROUP BY artist
HAVING COUNT(id) > 3;