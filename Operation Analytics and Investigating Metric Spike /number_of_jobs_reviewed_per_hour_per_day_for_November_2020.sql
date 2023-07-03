CREATE TABLE IF NOT EXISTS Case_Study1_Table1 (
ds VARCHAR(40),
job_id INT NULL,
actor_id INT,
event VARCHAR(40),
language VARCHAR(40),
time_spent INT,
org VARCHAR(40)
);
SELECT
*
FROM
Case_Study1_Table1;
# Calculate the number of jobs reviewed per hour per day for
November 2020
SELECT
DATE(ds) AS date,
HOUR(ds) AS hour,
COUNT(DISTINCT job_id) AS num_jobs_reviewed_hourly
FROM
Case_Study1_Table1
WHERE
MONTH(ds) = 11 AND YEAR(ds) = 2020
GROUP BY
DATE(ds), HOUR(ds)
ORDER BY
date, hour;
# Approach 2
SELECT
ds,
time_spent / (60 * 60) AS time_spent_hours,
(COUNT(ds) * 60 * 60) / SUM(time_spent) AS
num_jobs_reviewed_hourly
FROM
Case_Study1_Table1
GROUP BY ds , time_spent_hours;
