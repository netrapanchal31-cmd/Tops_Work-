CREATE TABLE Orders_Zomato
(order_id INT PRIMARY KEY,
user_id INT,
order_date DATE,
total_amount DECIMAL(10,2));

INSERT INTO Orders_Zomato VALUES
(101, 1, '2026-06-01', 350.00),
(102, 1, '2026-06-05', 420.00),
(103, 1, '2026-06-10', 280.00),
(104, 2, '2026-06-02', 500.00),
(105, 2, '2026-06-07', 650.00),
(106, 3, '2026-06-03', 300.00),
(107, 3, '2026-06-08', 450.00);

SELECT user_id,order_id,order_date,total_amount,
LAG(total_amount) OVER (PARTITION BY user_id ORDER BY order_date) AS previous_order_amount
FROM Orders_Zomato;

SELECT user_id,order_id,order_date,total_amount,
LEAD(total_amount) OVER (PARTITION BY user_id ORDER BY order_date) AS next_order_amount
FROM Orders_Zomato;