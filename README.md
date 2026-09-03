# Cyclistic Bike-Share Analysis

## 📊 Project Overview
Analysis of Cyclistic bike-share usage patterns comparing annual members vs casual riders.

**Goal:** Understand behavioral differences to convert casual riders into annual members.

**Data Period:** August 2025 - July 2026 (12 months)

---

## 📈 Key Findings

### Volume
- **Members:** 3,886,872 rides (64.3%)
- **Casual:** 2,151,032 rides (35.7%)
- **Total:** 6,037,904 clean rides

### Average Ride Duration
- **Members:** 12.39 minutes (work commute)
- **Casual:** 21.24 minutes (leisure exploration)
- **Difference:** 71% longer casual rides

### Weekday Patterns
- Members peak **Wednesday** (622K rides)
- Casual peak **Saturday** (457K rides)
- Clear inverse pattern - different use cases

### Seasonal Patterns
- **Summer peak:** July (357K casual, 511K member)
- **Winter low:** December (28K casual, 112K member)
- Casual 92.8% weather-sensitive

### Bike Preference
- Both prefer electric bikes (67% of all rides)
- Casual + Classic = 39.42 min average (longest!)
- Member + Electric = 11.08 min average (shortest)

---

## 💡 Top 3 Recommendations

### 1. Weekend Premium Membership
- Target casual weekend riders
- Expected conversion: 10-20% (215K-430K)
- Revenue increase: 15-30%

### 2. Classic Bike Loyalty Program
- Target highly-engaged casual classic users
- Expected conversion: 10-20% (61K-122K)
- Focus on "explorer" community

### 3. Seasonal Membership Campaigns
- **Summer:** Free 1-month trial
- **Winter:** "Winter Warrior" discounted tier
- **Spring:** "Comeback" 25% discount
- Expected conversion: 100K+ Year 1

---

## 📁 Repository Structure
cyclistic-bike-share-analysis/
├── README.md
├── 01-data/
│   └── README.md
├── 02-sql/
│   ├── 01-table-creation.sql
│   ├── 02-data-merge-union.sql
│   ├── 03-data-cleaning.sql
│   ├── 04-data-verification.sql
│   ├── 05-analysis-queries.sql
│   └── 06-summary-tables.sql
├── 03-documentation/
└── 04-results/
└── Key-Findings.md

---

## 📊 Data Summary

| Metric | Value |
|---|---|
| Total Rides | 6,037,904 |
| Member Rides | 3,886,872 (64.3%) |
| Casual Rides | 2,151,032 (35.7%) |
| Active Days | 365 (members), 250 (casual) |
| Avg Member Duration | 12.39 min |
| Avg Casual Duration | 21.24 min |
| Data Quality | ✓ Verified |

---

## 🛠️ Tools Used
- **Database:** PostgreSQL
- **SQL Editor:** pgAdmin
- **Analysis Period:** September 2026
- **Data Source:** Cyclistic (fictional company)

---

## 👤 Analyst
**Dipali Singh Kushwaha**

---

## 📝 Process Followed
1. ✅ Imported 12 monthly CSV files
2. ✅ Merged data using UNION ALL
3. ✅ Cleaned data (removed duplicates, blanks, invalid records)
4. ✅ Performed 5 major analyses
5. ✅ Created 4 summary tables
6. ✅ Generated 3 recommendations

---

## 🔍 How to Use This Repository

1. **Review README** (you're reading it!)
2. **Check SQL files** in `02-sql/` folder
3. **Read documentation** in `03-documentation/`
4. **View findings** in `04-results/`
5. **Implement recommendations**
##NEXT STEP
- Build a Tableau dashboard using the SQL summary tables
- Share the analysis and recommendations as a portfolio case study
- Explore station-level and time-of-day rider behaviour in a future analysis
---

**Last Updated:** September 2026
