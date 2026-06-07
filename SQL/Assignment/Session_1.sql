CREATE DATABASE music_streaming_app;
USE music_streaming_app;

CREATE TABLE playlists (
    playlist_id INT PRIMARY KEY,
    P_name VARCHAR(50),
    created_by VARCHAR(50)
);

INSERT INTO playlists VALUES
(1, 'Bollywood Hits', 'Netra'),
(2, 'Chill Vibes', 'Krish'),
(3, 'Workout Mix', 'Lata');

SELECT * FROM playlists
WHERE created_by = 'Netra';

/* 
A table is a collection of related data organized in rows and columns. For example, 
in a food delivery app like Zomato, there may be an Orders table that stores information about customer orders.
A row represents a single record in the table. 
For example, one row in the Orders table might contain details of a specific order such as Order ID 101, Customer Name "Riya", Restaurant "Pizza Hub", and Amount ₹450.
A column represents a specific type of information stored for every record. 
In the Orders table, columns could include Order_ID, Customer_Name, Restaurant_Name, and Amount.
/*