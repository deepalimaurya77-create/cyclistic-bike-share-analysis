-- ===============================================
-- STEP 13: DATA CLEANING & TRANSFORMATION
-- ===============================================

DROP TABLE IF EXISTS cleaned_trips;

CREATE TABLE cleaned_trips AS
SELECT
    ride_id,
    rideable_type,
    TO_TIMESTAMP(started_at, 'YYYY-MM-DD HH24:MI:SS') AS started_at,
    TO_TIMESTAMP(ended_at, 'YYYY-MM-DD HH24:MI:SS') AS ended_at,
    member_casual,
    EXTRACT(EPOCH FROM (TO_TIMESTAMP(ended_at, 'YYYY-MM-DD HH24:MI:SS') - 
                         TO_TIMESTAMP(started_at, 'YYYY-MM-DD HH24:MI:SS'))) / 60 AS ride_length_minutes,
    TO_CHAR(TO_TIMESTAMP(started_at, 'YYYY-MM-DD HH24:MI:SS'), 'Day') AS day_of_week,
    EXTRACT(DOW FROM TO_TIMESTAMP(started_at, 'YYYY-MM-DD HH24:MI:SS')) AS day_number
FROM (
    SELECT DISTINCT *
    FROM all_trips_raw
    WHERE
        ride_id IS NOT NULL AND ride_id != ''
        AND started_at IS NOT NULL AND started_at != ''
        AND ended_at IS NOT NULL AND ended_at != ''
        AND member_casual IN ('member', 'casual')
        AND EXTRACT(EPOCH FROM (TO_TIMESTAMP(ended_at, 'YYYY-MM-DD HH24:MI:SS') - 
                                 TO_TIMESTAMP(started_at, 'YYYY-MM-DD HH24:MI:SS'))) / 60 > 0
) AS deduplicated;

-- Cleaning Rules Applied:
-- 1. Removed blank ride_id
-- 2. Removed blank timestamps
-- 3. Kept only valid rider types (member, casual)
-- 4. Removed zero and negative duration rides
-- 5. Removed duplicate records

-- Result: 6,037,904 clean rows ready for analysis
