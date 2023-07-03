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
# Group the data by date and calculate the number of events
per second for each day
CREATE TABLE IF NOT EXISTS num_events_per_sec_result
AS SELECT ds,
COUNT(event) AS num_events,
COUNT(event) / SUM(time_spent) AS num_events_per_sec
FROM
Case_Study1_Table1
GROUP BY ds;
SELECT
*
FROM
num_events_per_sec_result;
# Calculate the 7-day rolling average of the events per
# second using a rolling window function
select
ds,
num_events,
AVG(num_events_per_sec)
OVER (
ORDER BY DS ROWS BETWEEN 6 PRECEDING
AND CURRENT ROW) as rolling_sum
from num_events_per_sec_result;
