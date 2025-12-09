{{ config(materialized='view') }}

with dim_sales_details as (
    select *
    from {{ source('sales', 'dim_sales_team_details') }}
)

select * from dim_sales_details
