-- Problem:
-- Find users who logged in for 3 or more consecutive days.

-- Solution:
SELECT DISTINCT user_id
FROM (
    SELECT user_id, login_date,
    DATE_SUB(login_date, INTERVAL ROW_NUMBER() OVER (PARTITION BY user_id ORDER BY login_date) DAY) AS grp
    FROM Logins
) t
GROUP BY user_id, grp
HAVING COUNT(*) >= 3;
