# employee-attendance-analysis
This project analyzes employee attendance data to calculate the time spent in office using login timestamps. Window functions such as ROW_NUMBER() and LAG() are used to identify paired IN–OUT records and compute session durations. The solution demonstrates practical SQL skills for time-based analysis, attendance tracking, and HR reporting.

# Employee Attendance Analysis using SQL

## 📌 Problem Statement
Calculate the total time spent in office by employees using login timestamps.
Each employee has alternating IN and OUT records.

---

## 🗂️ Dataset
Table: `fact_tables.almas_prac_2025`

**Columns:**
- emp_id
- timestamp

---

## 🛠️ Tools Used
- SQL (Window Functions)
- GitHub (Version Control & Documentation)

---

## 🔍 Approach
1. Used `ROW_NUMBER()` to sequence timestamps per employee
2. Used `LAG()` to get previous login time
3. Calculated time difference between IN and OUT timestamps
4. Filtered even rows to capture OUT entries only

---

## 📊 Output
The query returns:
- emp_id
- login timestamp
- previous login
- total time spent in office (minutes)

---

## ✅ Key SQL Concepts Used
- Window Functions
- LAG()
- ROW_NUMBER()
- Date Difference calculation
- Modular filtering

---

## 🚀 Business Use Case
- Employee attendance tracking
- Office utilization analysis
- HR productivity metrics
