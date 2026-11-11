-- 1. Total revenue and profit
SELECT SUM(sales) AS total_revenue, SUM(profit) AS total_profit
FROM sales;

-- 2. Revenue and profit by region
SELECT region, SUM(sales) AS revenue, SUM(profit) AS profit
FROM sales
GROUP BY region
ORDER BY revenue DESC;

-- 3. Revenue and profit by month
SELECT strftime('%Y-%m', order_date_clean) AS month,
       SUM(sales) AS revenue,
       SUM(profit) AS profit
FROM sales
GROUP BY month
ORDER BY month;

-- 4. Profit margin by category
SELECT category,
       SUM(sales) AS revenue,
       SUM(profit) AS profit,
       ROUND(SUM(profit) * 100.0 / SUM(sales), 1) AS margin_pct
FROM sales
GROUP BY category;