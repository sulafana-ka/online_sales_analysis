SELECT
    -- 1. Extract the Year
    YEAR(STR_TO_DATE(order_date, '%Y-%m-%d')) AS sales_year,

    -- 2. Extract the Month
    MONTH(STR_TO_DATE(order_date, '%Y-%m-%d')) AS sales_month,

    -- 3. Calculate Monthly Revenue
    SUM(total) AS total_monthly_revenue,

    -- 4. Calculate Monthly Order Volume
    COUNT(DISTINCT order_id) AS total_order_volume

FROM
    sales

-- 5. APPLY THE TIME PERIOD FILTER (For 2021)
WHERE
    STR_TO_DATE(order_date, '%Y-%m-%d') BETWEEN '2021-01-01' AND '2021-12-31'

GROUP BY
    sales_year, sales_month

ORDER BY
    sales_year ASC, sales_month ASC;