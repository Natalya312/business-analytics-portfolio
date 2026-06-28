-- Retail Sales Performance Analysis

-- 1. Average Product Price
SELECT AVG(price) AS AvgPrice
FROM RetailSales;

-- 2. Average Discount
SELECT AVG(discount) AS AvgDiscount
FROM RetailSales;

-- 3. Promotion Intensity Analysis
SELECT
    ROUND(promotion_intensity,0) AS PromotionLevel,
    AVG(price) AS AvgPrice
FROM RetailSales
GROUP BY ROUND(promotion_intensity,0)
ORDER BY PromotionLevel;

-- 4. Advertising Impact
SELECT
    AVG(ad_spend) AS AvgAdSpend,
    AVG(footfall) AS AvgFootfall
FROM RetailSales;

-- 5. Competitor Price Analysis
SELECT
    AVG(price) AS StorePrice,
    AVG(competitor_price) AS CompetitorPrice
FROM RetailSales;

-- 6. Stock Level Analysis
SELECT
    AVG(stock_level) AS AvgStockLevel
FROM RetailSales;

-- 7. Customer Sentiment Analysis
SELECT
    AVG(customer_sentiment) AS AvgSentiment
FROM RetailSales;

-- 8. Return Rate Analysis
SELECT
    AVG(return_rate) AS AvgReturnRate
FROM RetailSales;

-- 9. Weather Impact Analysis
SELECT
    ROUND(weather_index,0) AS WeatherGroup,
    AVG(price) AS AvgPrice
FROM RetailSales
GROUP BY ROUND(weather_index,0)
ORDER BY WeatherGroup;

-- 10. Footfall Analysis
SELECT
    AVG(footfall) AS AvgFootfall,
    MAX(footfall) AS MaxFootfall,
    MIN(footfall) AS MinFootfall
FROM RetailSales;
