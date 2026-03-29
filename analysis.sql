-- Query 1: Top 5 High-Spending Customers
SELECT 
    customer_id, 
    SUM(total_amount) AS total_spent
FROM sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

-- Query 2: Daily Revenue Trends
SELECT 
    sale_date, 
    SUM(total_amount) AS daily_revenue
FROM sales
GROUP BY sale_date
ORDER BY sale_date ASC;
-- Query 3: Revenue by Product Category
-- This query joins the Sales and Products tables to see which category performs best.
SELECT 
    p.category, 
    SUM(s.total_amount) AS revenue_by_category
FROM sales s
JOIN products p ON s.product_id = p.product_id
GROUP BY p.category
ORDER BY revenue_by_category DESC;
