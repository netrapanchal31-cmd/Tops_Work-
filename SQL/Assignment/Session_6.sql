USE product_analytics_system;

SELECT * FROM products
ORDER BY price ASC;

SELECT * FROM products
ORDER BY price DESC
LIMIT 5;

USE tops_labtask;
CREATE TABLE movies (
    title VARCHAR(100),
    release_year INT,
    rating DECIMAL(3,1)
);

INSERT INTO movies VALUES
('Inception', 2010, 8.8),
('Interstellar', 2014, 8.7),
('Dune', 2021, 8.0),
('Oppenheimer', 2023, 8.5),
('Avatar: The Way of Water', 2022, 7.8);

SELECT title, release_year, rating
FROM movies
ORDER BY release_year DESC, rating DESC;

USE music_streaming_app;
SELECT * FROM restaurants
ORDER BY r_name ASC
LIMIT 10;

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    song_name VARCHAR(100),
    play_count INT,
    added_date DATE
);

INSERT INTO songs VALUES
(1, 'Kesariya', 500, '2026-06-01'),
(2, 'Tum Hi Ho', 800, '2026-06-03'),
(3, 'Apna Bana Le', 800, '2026-06-05'),
(4, 'Raataan Lambiyan', 700, '2026-06-02'),
(5, 'Heeriye', 600, '2026-06-04');

SELECT * FROM songs
ORDER BY play_count DESC, added_date DESC
LIMIT 3;