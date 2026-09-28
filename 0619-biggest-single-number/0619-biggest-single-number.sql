# Write your MySQL query statement below

SELECT MAX(num) AS num FROM (SELECT n.num FROM MyNumbers n GROUP BY n.num HAVING COUNT(n.num)=1) AS sub; 
