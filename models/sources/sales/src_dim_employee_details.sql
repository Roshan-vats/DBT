{{ config(materialized='view') }}

with dim_employee_details as (
    select *
    from {{ source('sales', 'dim_employee_details') }}
)

select * from dim_employee_details