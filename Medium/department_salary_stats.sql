CREATE TABLE EmpDept (
    name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);

INSERT INTO EmpDept VALUES
('Amit','IT',50000),
('Rohit','IT',70000),
('Neha','HR',40000),
('Priya','HR',60000);

-- answer

SELECT 
    dept,
    COUNT(*) AS total_emp,
    SUM(CASE 
            WHEN salary > 60000 THEN 1 
            ELSE 0 
        END) AS high_salary_count
FROM EmpDept
GROUP BY dept;
