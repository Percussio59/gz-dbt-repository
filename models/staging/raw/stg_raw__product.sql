with 

source as (

    select * from {{ source('raw', 'product') }}

),

renamed as (

    select
        products_id,
        CAST(purchase_price,FLOAT64)

    from source

)

select * from renamed
