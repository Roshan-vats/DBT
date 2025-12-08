{{ config(materialized='view') }}

with dim_locations_details as (
    select *
    from {{ source('sales', 'DIM_CHANNEL_DETAILS') }}
)

select * from dim_locations_details
