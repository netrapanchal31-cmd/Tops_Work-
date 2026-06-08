

CREATE TABLE Influencers (
    id INT PRIMARY KEY,
    I_name VARCHAR(100)
);

CREATE TABLE Collaborations (
    id INT PRIMARY KEY,
    influencer1_id INT,
    influencer2_id INT,
    collab_date DATE,
    FOREIGN KEY (influencer1_id) REFERENCES Influencers(id),
    FOREIGN KEY (influencer2_id) REFERENCES Influencers(id)
);

INSERT INTO Influencers VALUES
(1, 'Netra'),
(2, 'Neha'),
(3, 'Krish'),
(4, 'Lata');

INSERT INTO Collaborations VALUES
(1, 1, 2, '2026-01-10'),
(2, 2, 3, '2026-01-15');



CREATE TABLE Playlists_1 (
    id INT PRIMARY KEY,
    user_id INT,
    playlist_name VARCHAR(100),
    parent_playlist_id INT,
    FOREIGN KEY (parent_playlist_id) REFERENCES Playlists_1(id)
);

INSERT INTO Playlists_1 VALUES
(1, 101, 'Workout Mix', NULL),
(2, 101, 'Cardio Boost', 1),
(3, 102, 'Chill Vibes', NULL),
(4, 102, 'Evening Chill', 3);


CREATE TABLE Users (
    id INT PRIMARY KEY,
    username VARCHAR(100)
);

CREATE TABLE Orders (
    id INT PRIMARY KEY,
    user_id INT,
    order_date DATE,
    FOREIGN KEY (user_id) REFERENCES Users(id)
);

CREATE TABLE Payments (
    id INT PRIMARY KEY,
    order_id INT,
    amount DECIMAL(10,2),
    FOREIGN KEY (order_id) REFERENCES Orders(id)
);

INSERT INTO Users VALUES
(1, 'Niyati'),
(2, 'Dhurv'),
(3, 'Harsh');

INSERT INTO Orders VALUES
(1, 1, '2026-01-01'),
(2, 1, '2026-01-05'),
(3, 2, '2026-01-10');

INSERT INTO Payments VALUES
(1, 1, 500),
(2, 2, 300),
(3, 3, 700);


CREATE TABLE Restaurants_1 (
    id INT PRIMARY KEY,
    r_name VARCHAR(100)
);

CREATE TABLE Reviews_1 (
    id INT PRIMARY KEY,
    restaurant_id INT,
    review_text VARCHAR(255),
    FOREIGN KEY (restaurant_id) REFERENCES Restaurants(r_id)
);

INSERT INTO Restaurants_1 VALUES
(1, 'Spice Garden'),
(2, 'Pizza Hub');

INSERT INTO Reviews_1 VALUES
(1, 1, 'Great food'),
(2, 1, 'Excellent taste'),
(3, 1, 'Loved it'),
(4, 2, 'Nice pizza');


CREATE TABLE Categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    p_name VARCHAR(100),
    category_id INT,
    FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);

INSERT INTO Categories VALUES
(1, 'Electronics'),
(2, 'Fashion'),
(3, 'Home Appliances');

INSERT INTO Products VALUES
(1, 'Mobile Phone', 1),
(2, 'Laptop', 1),
(3, 'T-Shirt', 2),
(4, 'Shoes', 2),
(5, 'Mixer Grinder', 3);

