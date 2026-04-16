-- Problem: Replace Employee ID With The Unique Identifier
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/

-- Approach:
-- Use LEFT JOIN to keep all employees and attach unique_id if available

select e.name, u.unique_id from Employees e
Left join EmployeeUNI u on e.id = u.id;
