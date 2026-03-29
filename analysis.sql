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