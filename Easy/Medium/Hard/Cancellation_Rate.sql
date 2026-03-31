-- Problem:
-- Calculate the cancellation rate of trips for each day.

-- Solution:
SELECT request_at AS Day,
ROUND(
    SUM(CASE WHEN status != 'completed' THEN 1 ELSE 0 END) / COUNT(*),
    2
) AS 'Cancellation Rate'
FROM Trips t
JOIN Users u1 ON t.client_id = u1.users_id
JOIN Users u2 ON t.driver_id = u2.users_id
WHERE u1.banned = 'No' AND u2.banned = 'No'
GROUP BY request_at;
