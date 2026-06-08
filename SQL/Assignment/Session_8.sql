DROP TABLE Orders;

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_id INT,
    payment_method VARCHAR(20),
    amount DECIMAL(10,2)
);

INSERT INTO Orders VALUES
(1, 101, 'UPI', 250),
(2, 102, 'Card', 500),
(3, 101, 'Wallet', 150),
(4, 103, 'COD', 700),
(5, 104, 'UPI', 450),
(6, 102, 'Card', 350),
(7, 105, 'Wallet', 200),
(8, 103, 'UPI', 600);

SELECT payment_method, COUNT(*) AS total_orders
FROM Orders
GROUP BY payment_method;

SELECT user_id, SUM(amount) AS total_spend
FROM Orders
GROUP BY user_id;

SELECT payment_method, AVG(amount) AS average_amount
FROM Orders
GROUP BY payment_method
HAVING AVG(amount) > 300;

-- WHERE DIFFERENCE 
SELECT * FROM Orders
WHERE amount > 300;

-- HAVING DIFFERENCE
SELECT user_id, SUM(amount) AS total_spend
FROM Orders
GROUP BY user_id
HAVING SUM(amount) > 800;