-- Problem: Rising Temperature
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/rising-temperature/

-- Approach:
-- Join the table with itself to compare each day with the previous day
-- Use date_add to match consecutive dates

select today.id from Weather today
join Weather yesterday
on today.recordDate = date_add(yesterday.recordDate, interval 1 day)
where today.temperature > yesterday.temperature;
