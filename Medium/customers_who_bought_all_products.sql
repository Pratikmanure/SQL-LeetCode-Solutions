-- with reference to the orders and customer table find the customers who bought all the products
-- leetcode 1045

SELECT customer_id
FROM Customer
GROUP BY customer_id
HAVING COUNT(DISTINCT product_key) =
       (SELECT COUNT(*) FROM Product);
