-- Problem: Confirmation Rate
-- Difficulty: Medium
-- Link: https://leetcode.com/problems/confirmation-rate/

-- Approach:
-- Use LEFT JOIN to include all users
-- Count confirmed actions using boolean expression
-- Divide by total actions and handle NULL using IFNULL

select s.user_id, 
  round(ifnull(sum(c.action = "confirmed")/ count(c.action),0),2) as confirmation_rate
from signups s
left join confirmations c on s.user_id = c.user_id
group by s.user_id;
