# online_sales_analysis
online sales trend analysis using aggregations.

# Online Sales Trend Analysis (MySQL)

🎯 Project Overview

This repository documents a data analysis project focused on understanding sales trends using SQL aggregations. The objective was to calculate and analyze monthly revenue and unique order volume over time to identify seasonal patterns and high-performance periods.

🛠️ Tools and Data

Database Tool: MySQL

Dataset Source: online_sales table (loaded from the original online_sales.csv data).

Key Data Columns Used:

order_date(Date): For time-series grouping.

total(Total Revenue): Used as the measure for calculating revenue.

order_id(Transaction ID): Used to count unique transactions (order volume).

📊 Methodology: SQL Analysis Queries

The core of the analysis was achieved using two primary SQL queries: a general chronological trend query and a query to rank top-performing months.

1. Chronological Monthly Sales Trend
   
This query provides a complete time-series view, breaking down sales performance for every month in the dataset.

Key SQL Functions:

-YEAR() & MONTH(): Extract time components for grouping.

-SUM(total): Calculates the total monthly revenue.

-COUNT(DISTINCT order_id): Calculates the unique order volume.

-GROUP BY and ORDER BY: Ensure correct aggregation and chronological sorting.

Key Technique:

- ORDER BY monthly_revenue DESC: Ranks the months from highest revenue to lowest.

- LIMIT 5: Restricts the output to only the top five months.

📦 Repository Contents
 
 -online_salestrends.sql: Contains the complete set of SQL queries used for the analysis.

-online_salestrends_sc.png: The output table showing the full monthly sales trend.

-top_trends_sc.png: The output table listing the top 5 months by revenue.

README.md: This documentation file.
