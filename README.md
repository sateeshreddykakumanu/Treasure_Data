# Treasure_Data
#Prerequisites
In a local environment:
1. Install Digdag
2. Install Embulk
3. Create a local MySQL database called “td_coding_challenge”

# Folder Structure
td_coding_challenge

## data
customers
    customers_1.csv
    customers_2.csv
pageviews
    pageviews_1.csv
    pageviews_2.csv
## embulk
    customers_config.yml
    customers_seed.yml
    pageviews_config.yml
    pageviews_seed.yml
## sql-files
**create_tables.sql** -> Creates customers_tmp and pageviews_tmp tables

#Prerequisites
In a local environment:
1. Install Digdag
2. Install Embulk
3. Create a local MySQL database called “td_coding_challenge”

#Folder Structure
td_coding_challenge
##data
customers
    customers_1.csv
    customers_2.csv
pageviews
    pageviews_1.csv
    pageviews_2.csv
##embulk
    customers_config.yml
    customers_seed.yml
    pageviews_config.yml
    pageviews_seed.yml
## sql-files
**create_tables.sql** -> Creates customers_tmp and pageviews_tmp tables

**create_customers.sql** 
  Create a new table called `customers` that:
  1. Includes all columns from customers_tmp
  2. Parses the “user_agent” column to add a new column called ‘operating_system’ that contains one
     of the following values ("Windows", "Macintosh", "Linux", or "Other"). This column represents the operating system of the customer's desktop/laptop/tablet/mobile.

**create_pageviews.sql**
  Create a new table called `pageviews` that:
  1. Includes all columns from pageviews_tmp
  2. Excludes all records where job_title contains “Sales”

**pageviews_count.sql** -> Query that returns the total number of pageviews from users who are browsing with a Windows operating system or have “Engineer” in their job title -> Results echoed to  pageviews_count_result

**top_user_ids.sql** -> The top 3 user_id’s (ranked by total pageviews) who have viewed a web page with a “.gov” domain extension -> Results echoed to top_user_ids_result

**last_page_viewed.sql** -> The last page viewed by each of these user_id’s -> Results echoed to last_page_viewed_result


### How to Run
If it's a first time run:
digdag run td_mysql.dig

If it is not a first run:
digdag run td_mysql.dig --rerun
