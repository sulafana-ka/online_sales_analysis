use online_sales;

select * from sales;

SELECT
    -- Convert the VARCHAR 'order_date' to a proper date and extract the Year
    YEAR(STR_TO_DATE(order_date, '%Y-%m-%d')) AS sales_year,

    MONTH(STR_TO_DATE(order_date, '%Y-%m-%d')) AS sales_month,

    -- Calculate the Total Monthly Revenue (SUM of the 'total' column)
    SUM(total) AS total_monthly_revenue,

    -- Calculate the Total Monthly Order Volume (COUNT of DISTINCT order_id)
    COUNT(DISTINCT order_id) AS total_order_volume

FROM
    sales  -- This is the table name you used for import

GROUP BY
    sales_year, sales_month -- Group the results by the year and month combination

ORDER BY
    sales_year ASC, sales_month ASC; -- Sort the results chronologically
