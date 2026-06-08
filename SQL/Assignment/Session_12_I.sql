WITH TopRatedProducts AS (
SELECT * FROM Products
WHERE rating > 4.5)
SELECT * FROM TopRatedProducts;

CREATE TABLE Products_1 (
product_id INT,
product_name VARCHAR(50),
rating DECIMAL(2,1));

CREATE TABLE ProductRatings (
    product_id INT,
    product_name VARCHAR(50),
    rating DECIMAL(2,1)
);

INSERT INTO ProductRatings VALUES
(1, 'Shoes', 4.8),
(2, 'T-Shirt', 4.2),
(3, 'Watch', 4.9),
(4, 'Bag', 4.3);

WITH TopRatedProducts AS (
SELECT * FROM ProductRatings
WHERE rating > 4.5)
SELECT * FROM TopRatedProducts;

USE music_streaming_app;
WITH AhmedabadRestaurants AS (
SELECT * FROM Restaurants
WHERE city = 'Ahmedabad')
SELECT * FROM AhmedabadRestaurants
WHERE Rating > 4;

CREATE TABLE Instagram_Users (
user_id INT,
user_name VARCHAR(50),
followers INT);

CREATE TABLE Posts (
post_id INT,
likes INT);

INSERT INTO Instagram_Users VALUES
(1, 'Netra', 5000),
(2, 'Krish', 4500),
(3, 'Lata', 4000),
(4, 'Neha', 3500),
(5, 'Niyati', 3000);

INSERT INTO Posts VALUES
(101, 900),
(102, 850),
(103, 800),
(104, 700),
(105, 600);

SELECT * FROM 
(SELECT * FROM Instagram_Users) u
WHERE followers > 7000;

-- refactor 
WITH PopularUsers AS 
(SELECT * FROM Instagram_Users)
SELECT * FROM PopularUsers
WHERE followers > 4000;

