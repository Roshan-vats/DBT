{{ config(materialized='view') }}

with dim_distributor_details as (
    select *
    from {{ source('sales', 'dim_distributor_details') }}
)

select * from dim_distributor_details