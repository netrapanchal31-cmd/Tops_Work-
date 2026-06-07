CREATE TABLE Restaurants (
    id INT PRIMARY KEY,
    r_name VARCHAR(100),
    cuisine VARCHAR(50),
    rating DECIMAL(2,1),
    city VARCHAR(50)
);

INSERT INTO Restaurants VALUES
(1, 'Swagat', 'South Indian', 4.5, 'Ahmedabad'),
(2, 'La Pinoz', 'Italian', 4.2, 'Surat'),
(3, 'Dragon House', 'Chinese', 3.8, 'Ahmedabad'),
(4, 'Swadisht', 'North Indian', 4.1, 'Vadodara'),
(5, 'Food Palace', 'Chinese', 4.7, 'Surat');

SELECT * FROM Restaurants
WHERE rating > 4.0
AND city IN ('Ahmedabad', 'Surat');

SELECT * FROM Restaurants
WHERE r_name LIKE 'Swa%';

SELECT * FROM Restaurants
WHERE rating BETWEEN 3.5 AND 4.5;

SELECT * FROM Restaurants
WHERE cuisine IN ('Chinese', 'Italian', 'South Indian');
