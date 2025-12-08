With dim_locations_details AS ( 
    select 
        "LOCATION_ID",
        "CITY",
        "STATE",
        "REGION"
    from {{ ref('src_dim_location_details') }}
)
select * from dim_locations_details