{{ config(materialized='view') }}

with dim_date as (
    select *
    from {{ source('sales', 'dim_date') }}
)

select * from dim_date
