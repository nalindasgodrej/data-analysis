select * from `table-1 users`;
SELECT
DATE(created_at) as dated,
COUNT(created_at) as
num_users_signup
FROM
`table-1 users`
GROUP BY
DATE(created_at);
