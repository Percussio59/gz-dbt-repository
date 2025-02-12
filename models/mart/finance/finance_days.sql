

select date_date
,ROUND(COUNT(orders_id),2) as nb_orders
,ROUND(SUM(revenue),2) as total_revenue
,ROUND(AVG(revenue),2) as avg_revenue
,ROUND(SUM(Operational_margin),2) as Margin_total
,ROUND(SUM(purchase_cost),2) as Total_purchase_cost
,ROUND(SUM(shipping_fee),2) as total_shipping_fee
,ROUND(SUM(logcost),2) as total_log_cost
,ROUND(SUM(quantity),2) as total_quantity

from {{ref("int_orders_operational")}}
GROUP BY date_date