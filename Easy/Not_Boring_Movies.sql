-- Problem:
-- Find movies with odd IDs and non-boring description.

-- Solution:
SELECT *
FROM Cinema
WHERE id % 2 = 1 AND description != 'boring'
ORDER BY rating DESC;
