{{ config(materialized='view') }}

with dim_product_details as (
    select *
    from {{ source('sales', 'dim_product_details') }}
)

select * from dim_product_details
