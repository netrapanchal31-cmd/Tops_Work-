USE tops_labtask;
DROP TABLE Playlists;
CREATE TABLE Playlists 
(id INT PRIMARY KEY,
user_id INT,
playlist_name VARCHAR(100),
total_likes INT);

INSERT INTO Playlists VALUES
(1, 101, 'Workout Hits', 500),
(2, 101, 'Morning Vibes', 350),
(3, 101, 'Road Trip Songs', 500),
(4, 102, 'Party Mix', 700),
(5, 102, 'Chill Beats', 450),
(6, 103, 'Study Music', 600),
(7, 103, 'Sleep Sounds', 300),
(8, 103, 'Top Bollywood', 800);

SELECT playlist_name,user_id, total_likes,
ROW_NUMBER() OVER (ORDER BY total_likes DESC) AS row_num
FROM Playlists;

SELECT playlist_name,user_id,total_likes,
RANK() OVER (ORDER BY total_likes DESC) AS playlist_rank
FROM Playlists;

SELECT playlist_name,user_id,total_likes,
DENSE_RANK() OVER (PARTITION BY user_id ORDER BY total_likes DESC) AS ranking
FROM Playlists;

SELECT * FROM 
(SELECT playlist_name,user_id,total_likes,
ROW_NUMBER() OVER 
(PARTITION BY user_id ORDER BY total_likes DESC)AS rn FROM Playlists) AS ranked_playlists
WHERE rn <= 2;