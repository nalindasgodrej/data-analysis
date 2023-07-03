USE ig_clone;
SELECT
*
FROM
users;
SELECT DAYNAME(created_at) AS day_name, COUNT(*) AS
frequency
FROM users
GROUP BY DAYNAME(created_at)
ORDER BY frequency DESC;
