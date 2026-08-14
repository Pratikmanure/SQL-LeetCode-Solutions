CREATE TABLE Orders (
    id INT,
    country VARCHAR(50),
    status VARCHAR(20),
    amount INT,
    order_date DATE
);

INSERT INTO Orders VALUES
(1,'India','approved',100,'2020-02-01'),
(2,'India','declined',200,'2020-02-02'),
(3,'US','approved',300,'2020-02-01'),
(4,'US','approved',400,'2020-02-03');

-- answer

SELECT 
    country,
    COUNT(*) AS total_orders,
    SUM(CASE 
            WHEN status = 'approved' THEN 1 
            ELSE 0 
        END) AS approved_orders,
    SUM(amount) AS total_amount,
    SUM(CASE 
            WHEN status = 'approved' THEN amount 
            ELSE 0 
        END) AS approved_amount
FROM Orders
GROUP BY country;
