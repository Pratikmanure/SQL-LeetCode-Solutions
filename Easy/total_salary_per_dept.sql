CREATE TABLE Employee1 (
    name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);

INSERT INTO Employee1 VALUES
('Amit', 'IT', 50000),
('Rohit', 'IT', 60000),
('Neha', 'HR', 40000),
('Priya', 'HR', 45000);

--answer
SELECT dept , SUM(salary) as total_salary
FROM Employee1
GROUP BY dept;
