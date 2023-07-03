USE ig_clone;
SELECT
*
FROM
tags;
SELECT
*
FROM
photo_tags;
CREATE TABLE IF NOT EXISTS tag_id_result
SELECT tag_id, COUNT(tag_id) as frequency
FROM photo_tags
GROUP BY tag_id
ORDER BY frequency DESC;
SELECT
*
FROM
tag_id_result;
SELECT id, tag_name
FROM tags
WHERE id IN (
SELECT tag_id
FROM tag_id_result
)
LIMIT 5;
