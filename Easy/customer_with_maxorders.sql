-- to find customers with maximum orders
CREATE TABLE Orders (
    order_number INT,
    customer_number INT
);

INSERT INTO Orders VALUES
(1,1),
(2,2),
(3,3),
(4,3);

-- answer

SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;
