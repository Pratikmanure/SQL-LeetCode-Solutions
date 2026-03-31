-- Problem:
-- Find classes that have at least 5 students.

-- Solution:
SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
