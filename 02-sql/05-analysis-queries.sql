-- ===============================================
-- ANALYSIS QUERIES
-- ===============================================

-- ANALYSIS 1: Total Rides by Rider Type
SELECT 
    member_casual,
    COUNT(*) AS total_rides
FROM cleaned_trips
GROUP BY member_casual;

-- ANALYSIS 2: Average Ride Duration
SELECT 
    member_casual,
    ROUND(AVG(ride_length_minutes), 2) AS avg_duration,
    COUNT(*) AS total_rides
FROM cleaned_trips
GROUP BY member_casual;

-- ANALYSIS 3: Weekday Patterns
SELECT
    TRIM(day_of_week) AS day_of_week,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(ride_length_minutes), 2) AS avg_duration
FROM cleaned_trips
GROUP BY TRIM(day_of_week), member_casual
ORDER BY 
    CASE 
        WHEN TRIM(day_of_week) = 'Sunday' THEN 1
        WHEN TRIM(day_of_week) = 'Monday' THEN 2
        WHEN TRIM(day_of_week) = 'Tuesday' THEN 3
        WHEN TRIM(day_of_week) = 'Wednesday' THEN 4
        WHEN TRIM(day_of_week) = 'Thursday' THEN 5
        WHEN TRIM(day_of_week) = 'Friday' THEN 6
        WHEN TRIM(day_of_week) = 'Saturday' THEN 7
    END, member_casual;

-- ANALYSIS 4: Monthly Trends
SELECT 
    EXTRACT(MONTH FROM started_at) AS month,
    TO_CHAR(started_at, 'Month') AS month_name,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(ride_length_minutes), 2) AS avg_duration
FROM cleaned_trips
GROUP BY EXTRACT(MONTH FROM started_at), TO_CHAR(started_at, 'Month'), member_casual
ORDER BY EXTRACT(MONTH FROM started_at), member_casual;

-- ANALYSIS 5: Bike Type Preference
SELECT 
    rideable_type,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(ride_length_minutes), 2) AS avg_duration
FROM cleaned_trips
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, member_casual;
