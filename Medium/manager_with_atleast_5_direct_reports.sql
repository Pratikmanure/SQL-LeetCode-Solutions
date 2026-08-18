-- find manager with atleast 5 direct reports 

SELECT manager.name
FROM Employee e
JOIN Employee manager
    ON e.managerId = manager.id
GROUP BY e.managerId
HAVING COUNT(*) >= 5;
