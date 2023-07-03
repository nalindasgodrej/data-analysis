# Create table to load table 2 events csv into the created
table
CREATE table if not exists eventss(user_id int,
occured_at varchar(40),
event_type varchar(40),
event_name varchar(40),
location varchar(40),
device varchar(40),
user_type INT NULL);
# View eventss table
select * from eventss;
# Calculate weekly user engagement,
# Average num of events per user per week
SELECT
user_id,
(DATEDIFF(MAX(occured_at), MIN(occured_at)) + 1)/7
AS num_weeks,
COUNT(user_id) AS num_events,
COUNT(user_id)/((DATEDIFF(MAX(occured_at),
MIN(occured_at)) + 1)/7) as average
FROM
eventss
GROUP BY user_id;
