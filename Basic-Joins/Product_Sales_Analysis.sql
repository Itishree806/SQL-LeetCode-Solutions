-- Problem: Product Sales Analysis I
-- Difficulty: Easy
-- Link: https://leetcode.com/problems/product-sales-analysis-i/

-- Approach:
-- Join Sales and Product table to get product name with sales info

select p.product_name, s.year, s.price from Sales s
join Product p on s.product_id = p.product_id;
