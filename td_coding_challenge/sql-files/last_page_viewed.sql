USE td_coding_challenge;

SELECT f.user_id, f.url FROM (SELECT p.user_id, p.url, MAX(p.timestamp) AS max_time FROM pageviews p JOIN (SELECT user_id FROM pageviews WHERE url LIKE '%.gov%' GROUP BY user_id ORDER BY COUNT(*) desc LIMIT 3) u on p.user_id = u.user_id GROUP BY p.user_id) f;
