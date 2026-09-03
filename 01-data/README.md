# Raw Data Files

## Overview
12 monthly CSV files from Cyclistic bike-share database
Data Period: August 2025 - July 2026

## Files Included
https://drive.google.com/drive/folders/1NX6TTY11UjdlMfyU6QadQkru_bTD306d?usp=drive_link
## Data Format
- Format: CSV (Comma-Separated Values)
- Columns: 13 (ride_id, rideable_type, started_at, etc.)
- Total Rows: 6,824,512 (before cleaning)

## Data Cleaning Notes
- All columns imported as TEXT
- Duplicates removed: 786,608 rows
- Final clean rows: 6,037,904

## Column Definitions
- ride_id: Unique identifier for each trip
- rideable_type: Type of bike (classic_bike, electric_bike)
- started_at: Trip start timestamp
- ended_at: Trip end timestamp
- start_station_name: Bike pickup station
- end_station_name: Bike return station
- member_casual: Rider type (member or casual)
- start_lat/lng, end_lat/lng: GPS coordinates
