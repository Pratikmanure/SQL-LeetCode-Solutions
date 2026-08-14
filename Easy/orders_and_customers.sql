CREATE TABLE Customers (
    id INT,
    name VARCHAR(50)
);

INSERT INTO Customers VALUES
(1, 'Rahul'),
(2, 'Priya');

CREATE TABLE Orders (
    id INT,
    customerId INT
);

INSERT INTO Orders VALUES
(101, 1),
(102, 2),
(103, 1);

--answer

SELECT o.id AS order_id, c.name AS customer_name
FROM Customers c
JOIN Orders o   --inner join
ON c.id = o.customerId;
