DROP DATABASE IF EXISTS procurement_db;
CREATE DATABASE procurement_db;
USE procurement_db;
CREATE TABLE procurement_records (
    order_id VARCHAR(20),
    product_id VARCHAR(20),
    product_name VARCHAR(100),
    vendor_id VARCHAR(20),
    vendor_name VARCHAR(150),
    quantity INT,
    unit_price INT,
    total_cost INT,
    order_date DATE,
    current_stock INT,
    reorder_level INT
);
SELECT COUNT(*) 
FROM procurement_records;
SELECT 
    vendor_name,
    SUM(total_cost) AS total_spend
FROM procurement_records
GROUP BY vendor_name
ORDER BY total_spend DESC
LIMIT 5;

SELECT 
    product_name,
    SUM(quantity) AS total_demand
FROM procurement_records
GROUP BY product_name
ORDER BY total_demand DESC
LIMIT 5;

SELECT 
    product_name,
    current_stock,
    reorder_level
FROM procurement_records
WHERE current_stock < reorder_level
ORDER BY current_stock ASC
LIMIT 10;

SELECT 
    product_name,
    SUM(quantity) AS total_demand,
    AVG(current_stock) AS avg_stock,
    ROUND(SUM(quantity) / AVG(current_stock), 2) AS demand_stock_ratio
FROM procurement_records
GROUP BY product_name
ORDER BY demand_stock_ratio DESC
LIMIT 5;

SELECT 
    MONTH(order_date) AS month,
    SUM(total_cost) AS monthly_spend
FROM procurement_records
GROUP BY MONTH(order_date)
ORDER BY month;
