-- ===============================================
-- STEP 12: MERGE ALL 12 TABLES
-- ===============================================

CREATE TABLE all_trips_raw AS
SELECT * FROM trip_2025_08
UNION ALL SELECT * FROM trip_2025_09
UNION ALL SELECT * FROM trip_2025_10
UNION ALL SELECT * FROM trip_2025_11
UNION ALL SELECT * FROM trip_2025_12
UNION ALL SELECT * FROM trip_2026_01
UNION ALL SELECT * FROM trip_2026_02
UNION ALL SELECT * FROM trip_2026_03
UNION ALL SELECT * FROM trip_2026_04
UNION ALL SELECT * FROM trip_2026_05
UNION ALL SELECT * FROM trip_2026_06
UNION ALL SELECT * FROM trip_2026_07;

-- Result: 6,824,512 rows merged vertically
-- Purpose: Single table for analysis
