CREATE TABLE Transactions (
    id INT,
    status VARCHAR(50),
    amount INT
);

INSERT INTO Transactions VALUES
(1, 'approved', 100),
(2, 'declined', 200),
(3, 'approved', 300);

-- answer

-- find total approved transactions vs total transactions
  SELECT count(*) AS total_transactions,
SUM(CASE
        when status = 'approved' then 1
        else 0
    END ) AS approved_transactions   
from Transactions   

-- find total approved amount vs total amount

SELECT 
SUM(amount) AS total_amount,
SUM(CASE 
        WHEN status = 'approved' THEN amount 
        ELSE 0 
    END) AS approved_amount
FROM Transactions;
