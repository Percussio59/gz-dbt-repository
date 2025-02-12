select
    *,
    cast(p.purchase_price as float64) as p_price,
    round(s.quantity * cast(p.purchase_price as float64), 2) as purchase_cost,
    round((s.quantity * cast(p.purchase_price as float64))- cast(p.purchase_price as float64),2) as margin,
    {{margin_percent("p.price","p.price")}} as margin
from {{ ref("stg_raw__sales") }} as s
left join {{ ref("stg_raw__product") }} as p 
using (products_id)
