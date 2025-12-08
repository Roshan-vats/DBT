{{ config(materialized='view') }}

with dim_sales_details as (
    select *
    from {{ source('sales', 'DIM_SALES_TEAM_DETAILS') }}
)

select * from dim_sales_details
