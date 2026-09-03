-- ===============================================
-- CYCLISTIC BIKE-SHARE CASE STUDY
-- STEP 1-11: CREATE 12 MONTHLY TABLES
-- ===============================================
-- 
-- PROJECT: Cyclistic Bike-Share Analysis
-- DATABASE: cyclistic_case_study
-- DATE: September 2026
-- 
-- PURPOSE: Create individual tables for each month
-- DATA PERIOD: August 2025 - July 2026
--
-- ===============================================

-- TABLE 1: August 2025
CREATE TABLE trip_2025_08 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 2: September 2025
CREATE TABLE trip_2025_09 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 3: October 2025
CREATE TABLE trip_2025_10 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 4: November 2025
CREATE TABLE trip_2025_11 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 5: December 2025
CREATE TABLE trip_2025_12 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 6: January 2026
CREATE TABLE trip_2026_01 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 7: February 2026
CREATE TABLE trip_2026_02 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 8: March 2026
CREATE TABLE trip_2026_03 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 9: April 2026
CREATE TABLE trip_2026_04 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 10: May 2026
CREATE TABLE trip_2026_05 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 11: June 2026
CREATE TABLE trip_2026_06 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- TABLE 12: July 2026
CREATE TABLE trip_2026_07 (
  ride_id TEXT,
  rideable_type TEXT,
  started_at TEXT,
  ended_at TEXT,
  start_station_name TEXT,
  start_station_id TEXT,
  end_station_name TEXT,
  end_station_id TEXT,
  start_lat TEXT,
  start_lng TEXT,
  end_lat TEXT,
  end_lng TEXT,
  member_casual TEXT
);

-- ===============================================
-- NEXT STEP: Import CSV data using COPY command
-- Example:
-- COPY trip_2025_08 FROM '/path/to/2025-08.csv' 
-- WITH (FORMAT csv, HEADER true, DELIMITER ',');
-- ===============================================

-- Status: All 12 tables created successfully
-- Total tables: 12
-- Schema: Identical for all tables
-- Data types: All TEXT (for import flexibility)
