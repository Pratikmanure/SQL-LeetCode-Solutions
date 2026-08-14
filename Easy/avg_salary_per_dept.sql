CREATE TABLE Employee2 (
    name VARCHAR(50),
    dept VARCHAR(50),
    salary INT
);

INSERT INTO Employee2 VALUES
('Amit', 'IT', 50000),
('Rohit', 'IT', 70000),
('Neha', 'HR', 40000),
('Priya', 'HR', 60000);

-- answer 
select dept, avg(salary) as AVG 
from Employee2
group by dept
