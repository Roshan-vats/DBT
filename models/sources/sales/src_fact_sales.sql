{{ config(materialized='view') }}

with fact_sales as (
    select *
    from {{ source('sales', 'FACT_SALES') }}
)

select * from fact_sales
