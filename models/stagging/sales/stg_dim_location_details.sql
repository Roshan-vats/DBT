With dim_locations_details AS ( 
    select 
        "location_id",
        "city",
        "state",
        "region"
    from {{ ref('src_dim_location_details') }}
)
select * from dim_locations_details