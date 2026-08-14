CREATE TABLE Employee (
    id INT,
    name VARCHAR(50),
    managerId INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 2),
(2, 'Rohit', NULL),
(3, 'Neha', 2);

-- answer 

SELECT 
    e.name AS employee_name,
    m.name AS manager_name
FROM Employee e
LEFT JOIN Employee m
ON e.managerId = m.id;
