-- Most frequent events
SELECT
    event_type,
    COUNT(*) AS TotalEvents
FROM RouteEvents
GROUP BY event_type
ORDER BY TotalEvents DESC;

-- Most active ports
SELECT
    location_name,
    COUNT(*) AS TotalEvents
FROM RouteEvents
GROUP BY location_name
ORDER BY TotalEvents DESC;

-- Average delay by location
SELECT
    location_name,
    AVG(delay_added_hours) AS AvgDelayHours
FROM RouteEvents
WHERE delay_added_hours > 0
GROUP BY location_name
ORDER BY AvgDelayHours DESC;

-- Average delay by event type
SELECT
    event_type,
    AVG(delay_added_hours) AS AvgDelay
FROM RouteEvents
GROUP BY event_type
ORDER BY AvgDelay DESC;

-- Sensor usage
SELECT
    sensor_type,
    COUNT(*) AS TotalEvents
FROM RouteEvents
GROUP BY sensor_type
ORDER BY TotalEvents DESC;
