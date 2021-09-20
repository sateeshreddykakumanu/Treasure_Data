USE td_coding_challenge;

SELECT user_id, COUNT(*) as num_page_views FROM customers WHERE operating_system='Windows' OR job_title LIKE '%Engineer%' GROUP BY user_id;
