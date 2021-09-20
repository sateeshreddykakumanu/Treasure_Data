USE td_coding_challenge;

DROP TABLE IF EXISTS customers;

CREATE TABLE customers AS SELECT customers_tmp.user_id, first_name, last_name, job_title, CASE WHEN user_agent LIKE '%Windows%' THEN 'Windows' WHEN user_agent LIKE '%Macintosh%' THEN 'Macintosh' WHEN user_agent LIKE '%Linux%' THEN 'Linux' WHEN user_agent LIKE '%Other%' THEN 'Other' END AS operating_system FROM customers_tmp JOIN pageviews_tmp ON customers_tmp.user_id=pageviews_tmp.user_id;
