CREATE DATABASE analytics_db;
USE analytics_db;
CREATE TABLE restaurants
(restaurant_id INT PRIMARY KEY,
restaurant_name VARCHAR(100) NOT NULL);

CREATE TABLE ratings 
(rating_id INT PRIMARY KEY,
restaurant_id INT,
rating DECIMAL(2,1),
FOREIGN KEY (restaurant_id) REFERENCES restaurants(restaurant_id));

