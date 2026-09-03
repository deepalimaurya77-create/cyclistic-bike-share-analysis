-- ===============================================
-- STEP 14: DATA QUALITY VERIFICATION
-- ===============================================

SELECT 
    COUNT(*) AS total_rides,
    COUNT(DISTINCT ride_id) AS distinct_ride_ids,
    COUNT(DISTINCT member_casual) AS rider_types,
    MIN(started_at) AS earliest_ride,
    MAX(started_at) AS latest_ride,
    MIN(ride_length_minutes) AS min_ride_duration,
    MAX(ride_length_minutes) AS max_ride_duration,
    ROUND(AVG(ride_length_minutes), 2) AS avg_ride_duration
FROM cleaned_trips;

-- Expected Results:
-- total_rides = 6,037,904
-- distinct_ride_ids = 6,037,904 (no duplicates)
-- rider_types = 2 (member, casual only)
-- earliest_ride = 2025-07-30
-- latest_ride = 2026-07-31
-- All durations > 0
