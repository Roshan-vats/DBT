{{ config(materialized='view') }}
With dim_product_details AS ( 
    select 
       "product_id",
        "sku",
        "product",
        "standard_cost",
        "color",
        "list_price",
        "model",
        "product_sub_category",
        "product_category"
    from {{ ref('src_dim_product_details') }}
)
select * from dim_product_details