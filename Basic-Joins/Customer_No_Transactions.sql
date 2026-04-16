-- Problem: Customer Who Visited but Did Not Make Any Transactions
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/

-- Approach:
-- Use LEFT JOIN to find visits with no matching transactions
-- Then count such visits per customer

select v.customer_id, count(*) as count_no_trans from Visits v
left join Transactions t on v.visit_id = t.visit_id
where t.transaction_id is null
group by v.customer_id;
