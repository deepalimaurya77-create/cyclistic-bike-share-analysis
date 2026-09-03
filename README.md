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
