CREATE TABLE Exams (
    student VARCHAR(50),
    marks INT
);

INSERT INTO Exams VALUES
('Amit', 80),
('Rohit', 40),
('Neha', 60),
('Priya', 30);

--answer

SELECT 
    SUM(CASE 
            WHEN marks >= 50 THEN 1 
            ELSE 0 
        END) AS passed,
    SUM(CASE 
            WHEN marks < 50 THEN 1 
            ELSE 0 
        END) AS failed
FROM Exams;
