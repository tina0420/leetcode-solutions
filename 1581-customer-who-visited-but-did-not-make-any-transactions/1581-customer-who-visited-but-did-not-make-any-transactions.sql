# Write your MySQL query statement below

-- Method 1: Join tables
-- SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans FROM Visits v LEFT JOIN Transactions t ON v.visit_id = t.visit_id WHERE t.transaction_id IS NULL GROUP BY v.customer_id;

-- Method 2: Filtering
SELECT v.customer_id, COUNT(v.visit_id) AS count_no_trans FROM Visits v WHERE v.visit_id NOT IN (SELECT t.visit_id FROM Transactions t) GROUP BY v.customer_id;

