-- Problem: Managers with at Least 5 Direct Reports
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/managers-with-at-least-5-direct-reports/

-- Approach:
-- Group employees by managerId and count direct reports
-- Filter managers with at least 5 reports using HAVING

SELECT e.name 
FROM Employee e
JOIN (
    SELECT managerId 
    FROM Employee 
    GROUP BY managerId 
    HAVING COUNT(*) >= 5
) m 
ON e.id = m.managerId;
