SELECT
*
FROM
eventss;
CREATE TABLE if not exists
t1_users_average AS
SELECT
device,
WEEK(occured_at) AS week_no,
COUNT(*) AS num_events
FROM
eventss
GROUP BY device , week_no;
SELECT
*
FROM
t1_users_average;
SELECT
AVG(num_events) AS
average_num_events
FROM
t1_users_average;
