CREATE DATABASE blinkit;
USE blinkit;
SHOW Tables;
SELECT * FROM orders;

##Average Delivery Time
SELECT AVG(DeliveryTime_Min) AS Average_Time
FROM orders;

##Restaurant Analysis
SELECT Restaurant, AVG(DeliveryTime_Min)
FROM orders
GROUP BY Restaurant
ORDER BY AVG(DeliveryTime_Min) DESC;

## Cancellation Rate
SELECT COUNT(CASE WHEN OrderStatus='Cancelled' THEN 1 END)*100/ COUNT(*)
FROM orders;

## Findind out Cancelled Orders
SELECT * FROM orders
WHERE OrderStatus= "Cancelled";