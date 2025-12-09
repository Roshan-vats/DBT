{{ config(materialized='view') }}

with dim_locations_details as (
    select *
    from {{ source('sales', 'dim_channel_details') }}
)

select * from dim_locations_details