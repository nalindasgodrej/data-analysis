– email events table
select * from eventss;
CREATE TABLE IF NOT EXISTS t3_email_events (
user_id INT,
occured_at VARCHAR(40),
action_ VARCHAR(40),
user_type VARCHAR(40)
);
SELECT
*
FROM
t3_email_events;
CREATE TABLE IF NOT EXISTS eventss_t3_email_events_join AS
SELECT DISTINCT
*
FROM
(SELECT
eventss.user_id,
t3_email_events.occured_at,
t3_email_events.action_l
FROM
eventss
JOIN t3_email_events ON eventss.user_id = t3_email_events.user_id) AS
SUBQUERY;
SELECT
*
FROM
eventss_t3_email_events_join;
# Group the data by email event type and
# calculate the number of events for each type
# and user engagement
SELECT
action_l,
COUNT(action_l) AS num_events_email,
COUNT(DISTINCT user_id) AS user_engagement
FROM
eventss_t3_email_events_join
GROUP BY action_l;
