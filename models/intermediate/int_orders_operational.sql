 SELECT
*
,round(o.margin + s.shipping_fee - s.ship_cost - s.logcost,2) as Operational_margin

from {{ref("int_orders_margin")}} as o
LEFT JOIN
{{ref("stg_raw__ship")}} as s
USING(orders_id)