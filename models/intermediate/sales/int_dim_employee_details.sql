With dim_employee_details AS (
    select 
        "EMPLOYEE_ID",
        "EMPLOYEE_NAME",
        "SALES_TEAM_ID"
    from {{ ref('src_dim_employee_details') }}
)
select * from dim_employee_details