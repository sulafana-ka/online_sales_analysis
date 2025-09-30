use sales_trendonline;

select * from  sales_online;

SELECT
    -- Extract Year and Month from the 'Date' column
    YEAR(Date) AS sales_year,
    MONTH(Date) AS sales_month,

    -- Calculate Monthly Revenue using the 'Total Revenue' column
    SUM(`Total Revenue`) AS monthly_revenue,

    -- Calculate Unique Order Volume using the 'Transaction ID'
    COUNT(DISTINCT `Transaction ID`) AS order_volume
FROM
    `Sales_online` -- Use the table name that corresponds to this file
GROUP BY
    sales_year,
    sales_month
ORDER BY
    sales_year ASC,
    sales_month ASC;
