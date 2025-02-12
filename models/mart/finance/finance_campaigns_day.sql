select 
date_date
,ROUND(f.Margin_total - c.ads_cost,2) as ads_margin
,avg_revenue as average_basket
,Margin_total as Operational_margin
,ads_cost
,ads_impression
,ads_clicks
,total_quantity as quantity
,total_revenue as revenue
,Total_purchase_cost as purchase_cost
,total_shipping_fee as shipping_fee
,total_log_cost as logcost




from {{ref("int_campaigns_day")}} as c
RIGHT join
{{ref("finance_days")}} as f
USING(date_date)
ORDER BY date_date DESC
