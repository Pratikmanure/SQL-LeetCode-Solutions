CREATE TABLE Trips (
    id INT,
    status VARCHAR(50)
);

INSERT INTO Trips VALUES
(1, 'completed'),
(2, 'cancelled'),
(3, 'completed'),
(4, 'cancelled');

-- answer

SELECT 
SUM(CASE 
        WHEN status = 'cancelled' THEN 1 
        ELSE 0 
    END) AS cancelled_trips
FROM Trips;
