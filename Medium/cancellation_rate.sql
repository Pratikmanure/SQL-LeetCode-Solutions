CREATE TABLE Trips (
    id INT,
    client_id INT,
    driver_id INT,
    status VARCHAR(50),
    request_at DATE
);

INSERT INTO Trips VALUES
(1,1,10,'completed','2013-10-01'),
(2,2,11,'cancelled','2013-10-01'),
(3,3,12,'completed','2013-10-01'),
(4,4,13,'cancelled','2013-10-01');

CREATE TABLE Users (
    users_id INT,
    banned VARCHAR(10)
);

INSERT INTO Users VALUES
(1,'No'),
(2,'Yes'),
(3,'No'),
(4,'No'),
(10,'No'),
(11,'No'),
(12,'No'),
(13,'No');

-- answer 

SELECT 
    t.request_at,
    ROUND(
        SUM(CASE 
                WHEN t.status = 'cancelled' THEN 1 
                ELSE 0 
            END) / COUNT(*), 2
    ) AS cancellation_rate
FROM Trips t
JOIN Users u1 
    ON t.client_id = u1.users_id AND u1.banned = 'No'
JOIN Users u2 
    ON t.driver_id = u2.users_id AND u2.banned = 'No'
GROUP BY t.request_at;
