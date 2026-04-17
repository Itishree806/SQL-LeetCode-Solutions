-- Problem: Employee Bonus
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/employee-bonus/

-- Approach:
-- Use LEFT JOIN to include all employees
-- Filter employees with bonus less than 1000 or no bonus

SELECT e.name, b.bonus FROM Employee e
LEFT JOIN Bonus b ON e.empId = b.empId
WHERE b.bonus < 1000 OR b.bonus IS NULL;
