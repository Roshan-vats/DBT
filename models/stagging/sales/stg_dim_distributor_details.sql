With dim_distributor_details AS (
    select 
        "distributor_id"
        "distributor_name"
    from {{ ref('src_dim_distributor_details') }}
)
select * from dim_distributor_details