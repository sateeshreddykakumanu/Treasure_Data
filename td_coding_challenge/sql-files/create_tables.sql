USE td_coding_challenge;

DROP TABLE IF EXISTS customers_tmp;

CREATE TABLE customers_tmp (user_id VARCHAR(100) NOT NULL, first_name VARCHAR(100), last_name VARCHAR(100), job_title VARCHAR(100));

DROP TABLE IF EXISTS pageviews_tmp;

CREATE TABLE pageviews_tmp (user_id VARCHAR(100) NOT NULL, url VARCHAR(256), user_agent VARCHAR(256), timestamp VARCHAR(100));
