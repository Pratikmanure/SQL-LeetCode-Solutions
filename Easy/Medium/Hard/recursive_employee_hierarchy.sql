-- Problem:
-- Find employee hierarchy using recursive CTE.

-- Solution:
WITH RECURSIVE emp_cte AS (
    SELECT id, name, managerId
    FROM Employee
    WHERE managerId IS NULL

    UNION ALL

    SELECT e.id, e.name, e.managerId
    FROM Employee e
    JOIN emp_cte ec ON e.managerId = ec.id
)
SELECT * FROM emp_cte;
