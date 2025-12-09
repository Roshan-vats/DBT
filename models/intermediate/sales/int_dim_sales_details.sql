With dim_sales_details AS ( 
    select 
        "SALES_TEAM_ID",
        "SALES_TEAM_NAME",
        "SALES_TEAM_MANAGER"

    from {{ ref('src_dim_sales_details') }}
)
select * from dim_sales_details