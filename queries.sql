-- Query 1: Total Sales by Region
SELECT "Region", 
       ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM orders
GROUP BY "Region"
ORDER BY total_sales DESC;

-- Query 2: Top 5 Products by Sales
SELECT "Product Name", 
       ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM orders
GROUP BY "Product Name"
ORDER BY total_sales DESC
LIMIT 5;

-- Query 3: Profit by Category
SELECT "Category", 
       ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM orders
GROUP BY "Category"
ORDER BY total_profit DESC;

-- Query 4: Monthly Sales Trend
SELECT DATE_TRUNC('month', TO_DATE("Order Date", 'DD-MM-YYYY')) AS month,
       ROUND(SUM("Sales")::numeric, 2) AS total_sales
FROM orders
GROUP BY month
ORDER BY month;

-- Query 5: States with Loss
SELECT "State",
       ROUND(SUM("Profit")::numeric, 2) AS total_profit
FROM orders
GROUP BY "State"
HAVING SUM("Profit") < 0
ORDER BY total_profit;
