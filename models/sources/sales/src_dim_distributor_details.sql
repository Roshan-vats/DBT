{{ config(materialized='view') }}

with dim_distributor_details as (
    select *
    from {{ source('sales', 'DIM_DISTRIBUTOR_DETAILS') }}
)

select * from dim_distributor_details