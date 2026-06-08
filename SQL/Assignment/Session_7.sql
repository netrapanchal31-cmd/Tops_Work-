CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    user_name VARCHAR(50),
    total_amount DECIMAL(10,2),
    order_date DATE
);

INSERT INTO Orders VALUES
(1, 'Rahul', 2500.00, '2026-06-01'),
(2, 'Priya', 1800.50, '2026-06-02'),
(3, 'Rahul', NULL, '2026-06-03'),
(4, 'Amit', 3200.75, '2026-06-04'),
(5, 'Sneha', 1500.00, '2026-06-05');

SELECT user_name, COUNT(*) AS order_count
FROM Orders
GROUP BY user_name;

SELECT AVG(total_amount) AS average_order_amount
FROM Orders;

SELECT MAX(total_amount) AS highest_order, MIN(total_amount) AS lowest_order
FROM Orders;

SELECT SUM(total_amount) AS total_sales
FROM Orders
WHERE total_amount IS NOT NULL;
