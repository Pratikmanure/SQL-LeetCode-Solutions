CREATE TABLE Orders2 (
    order_id INT,
    customer_id INT
);

INSERT INTO Orders2 VALUES
(1, 1),
(2, 1),
(3, 2),
(4, 3),
(5, 3),
(6, 3);

-- answer

SELECT customer_id
FROM Orders2
GROUP BY customer_id
ORDER BY COUNT(*) ASC
LIMIT 1;
