/*
Project: Employee Attendance Analysis
Description:
Calculates time spent in office by employees using login timestamps.
Assumes alternating IN and OUT records per employee.
*/

SELECT
    emp_id,
    timestamp,
    prev_login,
    date_diff('second', prev_login, timestamp) / 60 AS no_hours_in_office
FROM (
    SELECT
        emp_id,
        timestamp,
        row_number() OVER (
            PARTITION BY emp_id
            ORDER BY timestamp
        ) AS rn,
        lag(timestamp) OVER (
            PARTITION BY emp_id
            ORDER BY timestamp
        ) AS prev_login
    FROM fact_tables.almas_prac_2025
    WHERE emp_id IN (2, 3)
)
WHERE mod(rn, 2) = 0
ORDER BY emp_id, timestamp;

/* Base table check */
SELECT *
FROM fact_tables.almas_prac_2025;
