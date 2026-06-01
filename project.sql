CREATE DATABASE customer_project;
USE CUSTOMER_PROJECT;

CREATE TABLE customer_data (
    customer_id INT,
    age INT,
    gender VARCHAR(20),
    item_purchased VARCHAR(100),
    category VARCHAR(100),
    purchase_amount_usd FLOAT,
    location VARCHAR(100),
    size VARCHAR(10),
    color VARCHAR(50),
    season VARCHAR(50),
    review_rating FLOAT,
    subscription_status VARCHAR(20),
    shipping_type VARCHAR(50),
    discount_applied VARCHAR(10),
    promo_code_used VARCHAR(10),
    previous_purchases FLOAT,
    payment_method VARCHAR(50),
    frequency_of_purchases VARCHAR(50)
);



SELECT * FROM customer_data;

SELECT COUNT(*) FROM customer_data;

desc customer_data;

SELECT SUM(purchase_amount_usd) AS total_sales
FROM customer_data;

SELECT AVG(purchase_amount_usd) AS avg_purchase
FROM customer_data;

SELECT MAX(purchase_amount_usd) AS highest_purchase
FROM customer_data;

SELECT MIN(purchase_amount_usd) AS lowest_purchase
FROM customer_data;

SELECT category,
       SUM(purchase_amount_usd) AS total_sales
FROM customer_data
GROUP BY category
ORDER BY total_sales DESC;
SELECT gender,
       AVG(purchase_amount_usd) AS avg_spending
FROM customer_data
GROUP BY gender;

SELECT season,
       SUM(purchase_amount_usd) AS seasonal_sales
FROM customer_data
GROUP BY season
ORDER BY seasonal_sales DESC;


SELECT payment_method,
       COUNT(*) AS total_transactions
FROM customer_data
GROUP BY payment_method
ORDER BY total_transactions DESC;

SELECT location,
       SUM(purchase_amount_usd) AS total_sales
FROM customer_data
GROUP BY location
ORDER BY total_sales DESC
LIMIT 10;

SELECT category,
       ROUND(AVG(review_rating),2) AS avg_rating
FROM customer_data
GROUP BY category
ORDER BY avg_rating DESC;

SELECT subscription_status,
       COUNT(*) AS customers
FROM customer_data
GROUP BY subscription_status;

SELECT discount_applied,
       AVG(purchase_amount_usd) AS avg_sales
FROM customer_data
GROUP BY discount_applied;

SELECT frequency_of_purchases,
       COUNT(*) AS total_customers
FROM customer_data
GROUP BY frequency_of_purchases
ORDER BY total_customers DESC;