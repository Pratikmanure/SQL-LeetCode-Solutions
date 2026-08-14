CREATE TABLE Employee (
    id INT,
    name VARCHAR(50),
    managerId INT
);

INSERT INTO Employee VALUES
(1, 'Amit', 2),
(2, 'Rohit', NULL),
(3, 'Neha', 2);

--answer

SELECT name
FROM Employee
WHERE managerId IS NULL;
