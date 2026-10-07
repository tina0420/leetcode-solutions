# Write your MySQL query statement below

SELECT c.customer_id FROM Customer c 

GROUP BY c.customer_id 
HAVING COUNT(distinct c.product_key) = (SELECT COUNT(p.product_key) FROM Product p);

