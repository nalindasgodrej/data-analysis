SELECT
*
FROM
Case_Study1_Table1;
# first filter the data to include only the last 30 days' data
CREATE TABLE IF NOT EXISTS Case_Study1_Table1_Filtered AS
SELECT
*
FROM
Case_Study1_Table1
WHERE
ds >= '2020-11-30' - INTERVAL 30 DAY;
SELECT
*
FROM
Case_Study1_Table1_Filtered;
# Group the data by language and
# count the number of events for each language
CREATE TABLE IF NOT EXISTS language_count_result AS
SELECT
language,
COUNT(event) as num_events
FROM
Case_Study1_Table1_Filtered
group by language;
SELECT
*
FROM
language_count_result;
# Calculate the percentage share of each language
# using the total number of events
SELECT
language,
num_events,
num_events * 100 / (SELECT
SUM(num_events)
FROM
language_count_result) AS language_percent_share
FROM
language_count_result
