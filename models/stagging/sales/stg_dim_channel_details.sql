With dim_channel_details AS ( 
    select 
        "channel_id",
        "channel_name"
    from {{ ref('src_dim_channel_details') }}
)
select * from dim_channel_details