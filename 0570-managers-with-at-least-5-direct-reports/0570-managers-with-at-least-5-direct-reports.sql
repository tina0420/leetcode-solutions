# Write your MySQL query statement below

SELECT e.name 

FROM Employee e 
WHERE e.id IN (SELECT e.managerId FROM Employee e GROUP BY e.managerId HAVING COUNT(*) >= 5);

