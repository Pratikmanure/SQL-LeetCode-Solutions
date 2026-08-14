-- to find maximum students for a subject

CREATE TABLE Courses (
    student VARCHAR(50),
    class VARCHAR(50)
);

INSERT INTO Courses VALUES
('A', 'Math'),
('B', 'Math'),
('C', 'Math'),
('D', 'Math'),
('E', 'Math'),
('F', 'Science');

--answer

SELECT class
FROM Courses
GROUP BY class
HAVING COUNT(student) >= 5;
