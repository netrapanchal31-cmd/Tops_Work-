USE music_streaming_app;

CREATE TABLE Playlist (
    id INT PRIMARY KEY,
    song_name VARCHAR(100),
    artist VARCHAR(100),
    duration INT);
    
INSERT INTO Playlist VALUES 
(1, 'Tum Hi Ho', 'Arijit Singh', 262),
(2, 'Excuses', 'AP Dhillon', 215),
(3, 'Brown Munde', 'AP Dhillon', 245),
(4, 'Perfect', 'Ed Sheeran', 119);

SELECT * FROM Playlist;

UPDATE Playlist
SET artist = 'Arijit Singh(AS)'
WHERE id = 1;

DELETE FROM Playlist
WHERE duration < 120;

UPDATE Playlist
SET song_name = CONCAT(song_name, ' (Remix)')
WHERE artist = 'AP Dhillon' AND duration > 180;
