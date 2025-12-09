With dim_shipping_details AS ( 
    select 
        "SHIPPING_ID"
        "SHIPPING_MODE"
    from {{ ref('src_dim_sales_details') }}
)
select * from dim_shipping_details