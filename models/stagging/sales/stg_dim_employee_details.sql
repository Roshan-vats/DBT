With dim_employee_details AS (
    select
        "employee_id",
        "employee_name",
        "sales_team_id"
    from {{ ref('src_dim_employee_details') }}
)
select * from dim_employee_details