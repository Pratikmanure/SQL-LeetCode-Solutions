-- Problem:
-- Find median salary from Employee table.

-- answer

SELECT AVG(salary) AS median_salary
FROM (
    SELECT salary,
    ROW_NUMBER() OVER (ORDER BY salary) AS rn,
    COUNT(*) OVER () AS total
    FROM Employee
) t
WHERE rn IN (FLOOR((total + 1)/2), FLOOR((total + 2)/2));
