# Treasure_Data
#Prerequisites
In a local environment:
1. Installed Digdag
2. Installed Embulk
3. Installed MySQL output plugin `$ embulk gem install embulk-output-mysql`
4. Created a local MySQL database called “td_coding_challenge”

# td_coding_challenge

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

## task
task directory in which the run state is stored

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
**td_mysql.dig** -> digdag workflow to automate the creation of tables, Data Ingestion and Data Analysis

If it's a first time run:
digdag run td_mysql.dig 

If it is not a first run:
digdag run td_mysql.dig --rerun -o task

`MySQL user: root`
`MySQL password: mysql`

Also tried setting MySQL passqword using digdag secret, but wasn't successful

**task_run.txt** -> Text file containing the server logs of one end-to-end run of digdag workflow
