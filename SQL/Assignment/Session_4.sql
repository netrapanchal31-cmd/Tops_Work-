USE music_streaming_app;

CREATE TABLE MusicPlaylist
(id INT PRIMARY KEY,
song_name VARCHAR(100),
artist VARCHAR(100),
genre VARCHAR(50),
duration INT);
    
INSERT INTO MusicPlaylist VALUES 
(1, 'Tum Hi Ho', 'Arijit Singh', 'Romantic', 262),
(2, 'Excuses', 'AP Dhillon', 'Punjabi', 215),
(3, 'Brown Munde', 'AP Dhillon', 'Punjabi', 245),
(4, 'Perfect', 'Ed Sheeran', 'Pop', 239),
(5, 'Blinding Lights', 'The Weeknd', 'Pop', 200);

SELECT * FROM MusicPlaylist;

SELECT song_name, artist FROM MusicPlaylist
LIMIT 3;

CREATE TABLE FoodOrders 
(id INT PRIMARY KEY,
restaurant VARCHAR(100),
food_item VARCHAR(100),
order_date DATE);

INSERT INTO FoodOrders VALUES
(1, 'McDonalds', 'Burger', '2025-06-01'),
(2, 'KFC', 'Chicken Bucket', '2025-06-02'),
(3, 'Dominos', 'Pizza', '2025-06-03'),
(4, 'McDonalds', 'Fries', '2025-06-04'),
(5, 'KFC', 'Wings', '2025-06-05');

SELECT DISTINCT restaurant
FROM FoodOrders;

SELECT food_item AS 'Dish', order_date AS 'Date Ordered'
FROM FoodOrders;

SELECT DISTINCT food_item, restaurant
FROM FoodOrders
LIMIT 2, 2;