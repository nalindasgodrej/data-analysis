### MySQL Query 1-
SELECT
*
FROM
Case_Study1_Table1;
# Use the GROUP BY clause to
group the data by columns
# that may have duplicate values,
# and then use the HAVING
clause to
# filter out groups that have more
than one row
SELECT *
FROM Case_Study1_Table1
GROUP BY ds, job_id, actor_id,
event, language, time_spent, org
HAVING COUNT(*) > 1;

### MySQL query 2 -

SELECT
*
FROM
Case_Study1_Table1;
SELECT
*
FROM
Case_Study1_Table1
WHERE
ds IN (SELECT
ds
FROM
Case_Study1_Table1
GROUP BY ds
HAVING COUNT(ds) > 1)
OR job_id IN (SELECT
job_id
FROM
Case_Study1_Table1
GROUP BY job_id
HAVING COUNT(job_id) > 1)
OR actor_id IN (SELECT
actor_id
FROM
Case_Study1_Table1
GROUP BY actor_id
HAVING COUNT(actor_id) > 1)
OR event IN (SELECT
event
FROM
Case_Study1_Table1
GROUP BY event
HAVING COUNT(event) > 1)
OR language IN (SELECT
language
FROM
Case_Study1_Table1
GROUP BY language
HAVING COUNT(language) > 1)
OR time_spent IN (SELECT
time_spent
FROM
Case_Study1_Table1
GROUP BY time_spent
HAVING COUNT(time_spent) > 1)
OR org IN (SELECT
org
FROM
Case_Study1_Table1
GROUP BY org
HAVING COUNT(org) > 1);
