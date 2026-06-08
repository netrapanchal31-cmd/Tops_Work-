USE tops_labtask;

CREATE TABLE restaurants (
    r_id INT PRIMARY KEY,
    r_name VARCHAR(100),
    city VARCHAR(50)
);

CREATE TABLE dishes (
    d_id INT PRIMARY KEY,
    restaurant_id INT,
    dish_name VARCHAR(100),
    price DECIMAL(10,2),
    FOREIGN KEY (restaurant_id) REFERENCES restaurants(r_id)
);

INSERT INTO restaurants VALUES
(1, 'Spice Garden', 'Ahmedabad'),
(2, 'Pizza Hub', 'Surat'),
(3, 'Food Palace', 'Vadodara');

INSERT INTO dishes VALUES
(1, 1, 'Paneer Tikka', 250),
(2, 1, 'Dal Fry', 180),
(3, 2, 'Pizza', 350),
(4, 2, 'Garlic Bread', 150),
(5, 3, 'Biryani', 300),
(6, 3, 'Butter Naan', 50);

SELECT  d.dish_name, d.price, r.r_name AS restaurant_name, r.city
FROM dishes d
INNER JOIN restaurants r
ON d.restaurant_id = r.r_id;

SELECT r.r_name, r.city, d.dish_name,d.price
FROM restaurants r
LEFT JOIN dishes d
ON r.r_id = d.restaurant_id;

CREATE TABLE playlists (
    playlist_id INT PRIMARY KEY,
    playlist_name VARCHAR(100)
);

CREATE TABLE songs (
    song_id INT PRIMARY KEY,
    playlist_id INT,
    song_name VARCHAR(100)
);

INSERT INTO playlists VALUES
(1, 'Workout'),
(2, 'Chill'),
(3, 'Party');

INSERT INTO songs VALUES
(1, 1, 'Believer'),
(2, 1, 'Thunder'),
(3, 2, 'Perfect'),
(4, 2, 'Let Her Go');

SELECT p.playlist_name, s.song_name
FROM playlists p
LEFT JOIN songs s
ON p.playlist_id = s.playlist_id;