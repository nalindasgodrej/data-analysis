SQL Query -
USE ig_clone;
SELECT
*
FROM
users;
SELECT
*
FROM
likes;
SELECT
*
FROM
photos;
SELECT photo_id, COUNT(*) AS
frequency
FROM likes
GROUP BY photo_id
ORDER BY frequency DESC;
