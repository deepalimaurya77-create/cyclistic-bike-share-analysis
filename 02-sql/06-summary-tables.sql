-- ===============================================
-- SUMMARY TABLES FOR VISUALIZATION
-- ===============================================

-- Summary Table 1: Member vs Casual Overview
CREATE TABLE summary_member_casual AS
SELECT 
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(ride_length_minutes), 2) AS avg_duration,
    ROUND(MIN(ride_length_minutes), 2) AS min_duration,
    ROUND(MAX(ride_length_minutes), 2) AS max_duration,
    COUNT(DISTINCT CAST(started_at AS DATE)) AS active_days
FROM cleaned_trips
GROUP BY member_casual;

-- Summary Table 2: Weekday Analysis
CREATE TABLE summary_weekday_analysis AS
SELECT 
    CASE 
        WHEN TRIM(day_of_week) = 'Sunday' THEN 1
        WHEN TRIM(day_of_week) = 'Monday' THEN 2
        WHEN TRIM(day_of_week) = 'Tuesday' THEN 3
        WHEN TRIM(day_of_week) = 'Wednesday' THEN 4
        WHEN TRIM(day_of_week) = 'Thursday' THEN 5
        WHEN TRIM(day_of_week) = 'Friday' THEN 6
        WHEN TRIM(day_of_week) = 'Saturday' THEN 7
    END AS day_num,
    TRIM(day_of_week) AS day_name,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(ride_length_minutes), 2) AS avg_duration,
    ROUND(COUNT(*)::NUMERIC / SUM(COUNT(*)) OVER (PARTITION BY TRIM(day_of_week)) * 100, 2) AS pct_of_day
FROM cleaned_trips
GROUP BY day_num, day_name, member_casual
ORDER BY day_num, member_casual;

-- Summary Table 3: Monthly Trends
CREATE TABLE summary_monthly_trends AS
SELECT 
    EXTRACT(MONTH FROM started_at) AS month_num,
    TO_CHAR(started_at, 'Month') AS month_name,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(ride_length_minutes), 2) AS avg_duration,
    ROUND(COUNT(*)::NUMERIC / SUM(COUNT(*)) OVER (PARTITION BY EXTRACT(MONTH FROM started_at)) * 100, 2) AS pct_of_month
FROM cleaned_trips
GROUP BY month_num, month_name, member_casual
ORDER BY month_num, member_casual;

-- Summary Table 4: Bike Preference
CREATE TABLE summary_bike_preference AS
SELECT 
    rideable_type,
    member_casual,
    COUNT(*) AS total_rides,
    ROUND(AVG(ride_length_minutes), 2) AS avg_duration,
    ROUND(COUNT(*)::NUMERIC / SUM(COUNT(*)) OVER (PARTITION BY rideable_type) * 100, 2) AS pct_of_bike_type
FROM cleaned_trips
GROUP BY rideable_type, member_casual
ORDER BY rideable_type, member_casual;
