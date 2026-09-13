-- WEEK 2: SQL FOR DATA ANALYSIS
-- Dataset: SQL_Sales_Dataset_200_Rows
-- Table name assumed: sales

-- 1. Basic SELECT
SELECT * FROM sales;

-- 2. WHERE: orders with revenue above 10,000
SELECT * FROM sales
WHERE total_price > 10000;

-- 3. GROUP BY: total revenue by category
SELECT category, SUM(total_price) AS total_revenue
FROM sales
GROUP BY category
ORDER BY total_revenue DESC;

-- 4. Aggregations: average order value and order count
SELECT
    COUNT(*) AS total_orders,
    AVG(total_price) AS average_order_value,
    SUM(total_price) AS total_revenue
FROM sales;

-- 5. Top customers
SELECT customer_name,
       COUNT(*) AS order_count,
       SUM(total_price) AS total_revenue
FROM sales
GROUP BY customer_name
ORDER BY total_revenue DESC
LIMIT 10;

-- 6. Revenue by region
SELECT region, SUM(total_price) AS total_revenue
FROM sales
GROUP BY region
ORDER BY total_revenue DESC;

-- 7. CASE statement: classify orders by revenue
SELECT order_id, customer_name, total_price,
       CASE
           WHEN total_price >= 10000 THEN 'High'
           WHEN total_price >= 5000 THEN 'Medium'
           ELSE 'Low'
       END AS order_value_class
FROM sales;

-- 8. WHERE + ORDER BY
SELECT order_id, customer_name, category, total_price
FROM sales
WHERE total_price >= 5000
ORDER BY total_price DESC;

-- 9. Subquery: customers whose revenue is above the average order value
SELECT customer_name, total_price
FROM sales
WHERE total_price > (SELECT AVG(total_price) FROM sales)
ORDER BY total_price DESC;

-- 10. Join example (if a separate customers table exists)
-- SELECT s.order_id, s.customer_name, c.customer_name
-- FROM sales s
-- JOIN customers c ON s.customer_name = c.customer_name;
