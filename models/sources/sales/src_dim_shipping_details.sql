{{ config(materialized='view') }}

with dim_shipping_details as (
    select *
    from {{ source('sales', 'dim_shipping_details') }}
)

select * from dim_shipping_details
