SELECT
    YEAR(Date) AS sales_year,
    MONTH(Date) AS sales_month,
    SUM(`Total Revenue`) AS monthly_revenue, -- Calculate total revenue
    COUNT(DISTINCT `Transaction ID`) AS order_volume -- Calculate unique order count
FROM
    `sales_online`
GROUP BY
    sales_year,
    sales_month
ORDER BY
    monthly_revenue DESC -- Sort by revenue, highest first
LIMIT 5; -- Restrict the results to the top 5 rows