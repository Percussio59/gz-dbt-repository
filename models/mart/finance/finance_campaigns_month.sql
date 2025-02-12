select 
extract(month from date_date) as mois
,extract(year from date_date) as annee
,SUM(ROUND(f.Margin_total - c.ads_cost,2)) as ads_margin
,AVG(avg_revenue) as average_basket
,SUM(Margin_total) as Operational_margin
,SUM(ads_cost) as cost
,SUM(ads_impression) as impression 
,SUM(ads_clicks) as click
,SUM(total_quantity) as quantity
,SUM(total_revenue) as revenue
,SUM(Total_purchase_cost) as purchase_cost
,SUM(total_shipping_fee) as shipping_fee
,SUM(total_log_cost) as logcost




from {{ref("int_campaigns_day")}} as c
RIGHT join
{{ref("finance_days")}} as f
USING(date_date)

GROUP BY annee,mois 
order by mois