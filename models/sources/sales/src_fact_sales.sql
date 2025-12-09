{{ config(materialized='view') }}

with fact_sales as (
    select *
    from {{ source('sales', 'fact_sales') }}
)

select * from fact_sales
