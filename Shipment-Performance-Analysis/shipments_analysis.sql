-- Shipment Performance Analysis

-- 1. Total Shipments
SELECT COUNT(*) AS TotalShipments
FROM Shipments;

-- 2. Average Delivery Time
SELECT
AVG(DATEDIFF(day, ShipDate, DeliveryDate)) AS AvgDeliveryDays
FROM Shipments;

-- 3. Late Deliveries
SELECT *
FROM Shipments
WHERE DeliveryDate > PlannedDeliveryDate;

-- 4. On-Time Delivery Rate
SELECT
COUNT(CASE WHEN DeliveryDate <= PlannedDeliveryDate THEN 1 END) * 100.0 / COUNT(*) AS OnTimeRate
FROM Shipments;

-- 5. Cost by Carrier
SELECT
Carrier,
SUM(CostEUR) AS TotalCost
FROM Shipments
GROUP BY Carrier
ORDER BY TotalCost DESC;

-- 6. Revenue by Customer
SELECT
Customer,
SUM(RevenueEUR) AS Revenue
FROM Shipments
GROUP BY Customer
ORDER BY Revenue DESC;

-- 7. Profit by Carrier
SELECT
Carrier,
SUM(RevenueEUR - CostEUR) AS Profit
FROM Shipments
GROUP BY Carrier
ORDER BY Profit DESC;
