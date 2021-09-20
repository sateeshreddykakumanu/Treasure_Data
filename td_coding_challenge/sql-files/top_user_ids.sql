
USE td_coding_challenge;

SELECT customers.user_id FROM customers JOIN pageviews WHERE url LIKE '%.gov%' GROUP BY customers.user_id ORDER BY COUNT(*) desc LIMIT 0,3;
