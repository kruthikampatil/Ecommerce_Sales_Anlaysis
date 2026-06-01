CREATE DATABASE ecommerce_project;
USE ecommerce_project;

CREATE TABLE orders (
    order_id VARCHAR(50),
    order_date DATE,
    customer_name VARCHAR(100),
    product_name VARCHAR(200),
    category VARCHAR(100),
    sub_category VARCHAR(100),
    region VARCHAR(100),
    sales FLOAT,
    profit FLOAT,
    quantity INT
);

SELECT * FROM ecommerce_project.cleaned_ecommerce_dataset;

SELECT * FROM cleaned_ecommerce_dataset;

SELECT SUM(sales) AS total_sales
FROM cleaned_ecommerce_dataset;

SELECT *
FROM cleaned_ecommerce_dataset
ORDER BY sales DESC
LIMIT 5;

SELECT region, SUM(profit) AS total_profit
FROM cleaned_ecommerce_dataset
GROUP BY region;

SELECT COUNT(*) AS total_orders
FROM cleaned_ecommerce_dataset;

SELECT ROUND(AVG(sales),2) AS average_sales
FROM cleaned_ecommerce_dataset;