USE td_coding_challenge;

DROP TABLE IF EXISTS pageviews;

CREATE TABLE pageviews AS SELECT pageviews_tmp.user_id, url, user_agent, timestamp FROM pageviews_tmp JOIN customers_tmp ON customers_tmp.user_id=pageviews_tmp.user_id WHERE job_title NOT LIKE '%Sales%';
