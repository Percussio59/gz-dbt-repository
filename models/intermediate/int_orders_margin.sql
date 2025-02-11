select
orders_id
,SUM(revenue)
,SUM(quantity)
,SUM(purchase_cost)
,SUM(margin)
FROM {{ref("int_sales_margin")}}
GROUP BY orders_id