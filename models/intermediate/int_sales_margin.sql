select
*
,CAST(p.purchase_price AS FLOAT64) AS purchase_price
,round(s.quantity * CAST(p.purchase_price AS FLOAT64),2) as purchase_cost
,round((s.quantity * CAST(p.purchase_price AS FLOAT64)) - CAST(p.purchase_price AS FLOAT64),2) as margin

from
{{ref('stg_raw__sales')}} as s
LEFT JOIN
{{ref('stg_raw__product')}} as p
USING(products_id)