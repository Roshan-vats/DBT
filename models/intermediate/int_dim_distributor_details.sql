With dim_distributor_details AS (
    select 
        "DISTRIBUTOR_ID",
        "DISTRIBUTOR_NAME"
    from {{ ref('src_dim_distributor_details') }}
)
select * from dim_distributor_details