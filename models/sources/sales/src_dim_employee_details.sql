{{ config(materialized='view') }}

with dim_employee_details as (
    select *
    from {{ source('sales', 'DIM_EMPLOYEE_DETAILS') }}
)

select * from dim_employee_details