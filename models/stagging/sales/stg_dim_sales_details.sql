With dim_sales_details AS ( 
    select       
        "sales_team_id",
        "sales_team_name",
        "sales_team_manager"
    from {{ ref('src_dim_sales_details') }}
)
select * from dim_sales_details