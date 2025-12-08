{{ config(materialized='view') }}

with dim_shipping_details as (
    select *
    from {{ source('sales', 'DIM_SHIPPING_DETAILS') }}
)

select * from dim_shipping_details
