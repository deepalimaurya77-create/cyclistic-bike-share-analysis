# Issues & Troubleshooting Log

## Issue 1: Duplicate Records
**Problem:** 786,608 duplicate rows in cleaned data

**Solution:** Used SELECT DISTINCT in subquery

**Learning:** Always verify total_rows = distinct_ids

---

## Issue 2: Alias Naming Error
**Problem:** SQL error with space in alias name

**Solution:** Used underscores instead of spaces

**Learning:** PostgreSQL requires underscore format for aliases

---

## Issue 3: Timestamp Format
**Problem:** Used 'YY' instead of 'YYYY'

**Solution:** Corrected to 4-digit year format

**Learning:** Format must match actual data

---

## Issue 4: Query Sorting
**Problem:** Days sorted alphabetically, not chronologically

**Solution:** Used CASE statement for numerical ordering

**Learning:** Use CASE for custom sort orders

---

## Issue 5: Long Query Execution
**Problem:** DISTINCT operation took 5-10 minutes

**Solution:** Waited for completion (normal for 6M rows)

**Learning:** Large dataset operations require patience
