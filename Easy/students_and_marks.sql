CREATE TABLE Students (
    id INT,
    name VARCHAR(50)
);

INSERT INTO Students VALUES
(1, 'Amit'),
(2, 'Neha'),
(3, 'Ravi');

CREATE TABLE Marks (
    studentId INT,
    marks INT
);

INSERT INTO Marks VALUES
(1, 85),
(2, 90);

-- answer
SELECT name, marks
FROM students s
LEFT JOIN marks m
ON s.id = m.studentid;
