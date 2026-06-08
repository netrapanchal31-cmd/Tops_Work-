USE music_streaming_app;

SELECT id, r_name, city, rating
FROM Restaurants r1
WHERE rating >
(SELECT AVG(r2.rating) FROM Restaurants r2
WHERE r2.city = r1.city);

CREATE TABLE Users_1
(user_id INT,
user_name VARCHAR(50));

CREATE TABLE Orders_1
(order_id INT,
user_id INT);

INSERT INTO Users_1 VALUES
(1, 'Netra'),
(2, 'Krish'),
(3, 'Lata');

INSERT INTO Orders_1 VALUES
(101, 1),
(102, 1),
(103, 2);

SELECT u.user_name, 
(SELECT COUNT(*) FROM Orders_1 o WHERE o.user_id = u.user_id) AS total_orders
FROM Users_1 u;

CREATE TABLE Movies
(movie_id INT,
movie_name VARCHAR(50));

CREATE TABLE Reviews 
(review_id INT,
movie_id INT,
rating INT);

INSERT INTO Movies VALUES
(1, 'Avengers'),
(2, 'Titanic'),
(3, 'Inception');

INSERT INTO Reviews VALUES
(101, 1, 5),
(102, 1, 4),
(103, 2, 3),
(104, 3, 5);

SELECT movie_id, movie_name
FROM Movies
WHERE movie_id IN
(SELECT movie_id FROM Reviews
WHERE rating = 5);

CREATE TABLE Sellers (
seller_id INT,
seller_name VARCHAR(50));

CREATE TABLE Categories (
category_id INT,
category_name VARCHAR(50));

CREATE TABLE Products (
product_id INT,
seller_id INT,
category_id INT);

INSERT INTO Sellers VALUES
(1, 'Rahul Store'),
(2, 'Priya Shop');

INSERT INTO Categories VALUES
(101, 'Electronics'),
(102, 'Clothing'),
(103, 'Books');

INSERT INTO Products VALUES
(1, 1, 101),  
(2, 1, 102),  
(3, 1, 103), 
(4, 2, 101),  
(5, 2, 103);  

SELECT seller_name
FROM Sellers s
WHERE NOT EXISTS
(SELECT category_id FROM Categories c
WHERE NOT EXISTS
(SELECT * FROM Products p
WHERE p.seller_id = s.seller_id AND p.category_id = c.category_id));