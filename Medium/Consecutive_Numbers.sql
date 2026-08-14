-- Problem:
-- Find numbers that appear at least 3 times consecutively.

-- Solution:
SELECT DISTINCT num AS ConsecutiveNums
FROM Logs
WHERE (id+1, num) IN (SELECT id, num FROM Logs)
AND (id+2, num) IN (SELECT id, num FROM Logs);
