{{ config(materialized='view') }}

with dim_date as (
    select *
    from {{ source('sales', 'DIM_DATE') }}
)

select * from dim_date
