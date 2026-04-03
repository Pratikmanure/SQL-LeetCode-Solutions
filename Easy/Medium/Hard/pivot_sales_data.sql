-- Problem:
-- Convert rows into columns (pivot yearly sales).

-- Solution:
SELECT product_id,
SUM(CASE WHEN year = 2020 THEN sales ELSE 0 END) AS sales_2020,
SUM(CASE WHEN year = 2021 THEN sales ELSE 0 END) AS sales_2021
FROM Sales
GROUP BY product_id;
