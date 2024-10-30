SELECT 

    date_date,
    operational_margin - ads_cost AS ads_margin,
    average_basket,
    operational_margin,
    ads_cost,
    ads_impression,
    ads_clicks,
    quantity,
    revenue,
    purchase_cost,
    margin,
    shipping_fee,
    logcost,
    ship_cost

FROM {{ ref('finance_days') }}
JOIN {{ ref('int_campaigns_day') }}
USING(date_date)
ORDER BY date_date DESC