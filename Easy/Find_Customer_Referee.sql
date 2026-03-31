-- Problem:
-- Find customers whose referee is not id = 2.

-- Solution:
SELECT name
FROM Customer
WHERE referee_id IS NULL OR referee_id != 2;
