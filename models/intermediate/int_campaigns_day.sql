SELECT
    date_date,
    SUM(ads_cost) as ads_cost,
    SUM(impression) as ads_impression,
    SUM(click) as ads_clicks
FROM {{ ref("int_all_campaigns") }}
GROUP BY date_date
ORDER BY date_date DESC