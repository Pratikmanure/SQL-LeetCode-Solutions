CREATE TABLE Employees (
    name VARCHAR(50),
    salary INT
);

INSERT INTO Employees VALUES
('Amit', 30000),
('Rohit', 70000),
('Neha', 120000);

select *
from Employees;

--answer

select name ,
case
    when salary < 50000 then 'low' 
    when salary <= 100000 then 'medium'
    else 'high'
end  as category_salary
from Employees
