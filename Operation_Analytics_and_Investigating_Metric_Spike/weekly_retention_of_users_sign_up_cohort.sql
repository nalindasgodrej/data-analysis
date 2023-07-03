CREATE TABLE if not exists users_signup_weekly AS

SELECT
WEEK(created_at) AS week_no,
YEAR(created_at) AS years,
COUNT(created_at) as num_users_signup
-- COUNT(WEEK(created_at)) as num_users_signup
FROM
`table-1 users`
GROUP BY years, WEEK(created_at);
CREATE TABLE if not exists users_signup_engage AS
SELECT
WEEK(created_at) AS week_no,
YEAR(created_at) AS years,
COUNT(created_at) as num_users_engage
FROM
`table-1 users`
WHERE state = 'active'
GROUP BY years, WEEK(created_at);
# Calculate weekly retention rate
SELECT
t1.week_no,
t1.years,
t2.num_users_engage,
t2.num_users_engage / t1.num_users_signup as
weekly_retention_rate
FROM
users_signup_weekly AS t1
JOIN
users_signup_engage AS t2 ON t1.week_no =
t2.week_no
AND t1.years = t2.years;
