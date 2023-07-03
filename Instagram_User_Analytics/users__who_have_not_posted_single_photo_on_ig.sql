USE ig_clone;
SELECT
user_id
FROM
Photos;
-- Print out USERs tables
SELECT
*
FROM
users;
-- Print out photos tables
SELECT
*
FROM
photos;
-- Find missing numbers
-- from photos user_id
-- Find all values in users id
-- which are not present in photos
SELECT id, username
FROM users
WHERE id NOT IN (
SELECT user_id
FROM photos
);
