SELECT * FROM online_sale_data.online_sale_data;

-- Extracting month from date column :
SELECT month(date) 
FROM online_sale_data
GROUP BY month(date);

-- use sum() for revenue :
SELECT month(date) AS month, SUM(total_revenue) AS total_monthly_revenue
FROM online_sale_data
GROUP BY month(date);

-- count distinct id for volume :
SELECT month(date) AS month, COUNT( DISTINCT transaction_id ) AS order_volume
FROM online_sale_data
GROUP BY month(date);

-- use order by for sorting :
SELECT year(date) AS year, month(date) AS month, COUNT( DISTINCT transaction_id ) AS order_volume
FROM online_sale_data
GROUP BY year(date), month(date)
ORDER BY year ASC , month ASC;

-- limit result for specific time period :
SELECT year(date) AS year, month(date) AS month, COUNT( DISTINCT transaction_id ) AS order_volume
FROM online_sale_data
WHERE year(date) = 2024
GROUP BY year(date), month(date)
ORDER BY year ASC , month ASC;