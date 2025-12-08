{{ config(materialized='view') }}

with dim_product_details as (
    select *
    from {{ source('sales', 'DIM_PRODUCT_DETAILS') }}
)

select * from dim_product_details
