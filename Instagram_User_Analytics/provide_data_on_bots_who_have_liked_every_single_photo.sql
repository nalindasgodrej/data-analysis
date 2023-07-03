USE ig_clone;
SELECT
*
FROM
likes;
SELECT
*
FROM
photos;
CREATE TABLE IF NOT EXISTS
New_Result AS
SELECT user_id, COUNT(user_id)
as frequency
FROM likes
GROUP BY user_id;
-- ORDER BY frequency DESC;
SELECT
*
FROM
new_result;
SELECT id, username
FROM users
WHERE id IN (
SELECT user_id
FROM new_result
WHERE frequency = 257
);
