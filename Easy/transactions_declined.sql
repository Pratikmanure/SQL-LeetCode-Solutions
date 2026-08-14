CREATE TABLE Transactions2 (
    id INT,
    status VARCHAR(20),
    amount INT,
    day VARCHAR(20)
);

INSERT INTO Transactions2 VALUES
(1, 'approved', 100, 'Mon'),
(2, 'declined', 200, 'Mon'),
(3, 'approved', 300, 'Tue'),
(4, 'declined', 400, 'Tue'),
(5, 'declined', 150, 'Tue');

select *
from Transactions2;

-- 1st answer
--find total declined transactions 

select count(status) as declined_transactions
from Transactions2
where status = 'declined';

-- 2nd answer
-- find total decliend amount
select 
sum (case
         when status = 'declined' then amount
         else 0
     end) as declined_amount 
from Transactions2;

-- 3rd answer
-- find total declined transactions per day
select 
sum (case
         when status = 'declined' then 1
         else 0
     end) as declined_amount 
from Transactions2
group by day;
