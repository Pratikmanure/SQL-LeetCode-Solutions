-- Problem:
-- Find the customer who has placed the maximum number of orders.

-- Solution:
SELECT customer_number
FROM Orders
GROUP BY customer_number
ORDER BY COUNT(*) DESC
LIMIT 1;
