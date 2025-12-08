With dim_channel_details AS ( 
    select 
        "CHANNEL_ID",
        "CHANNEL_NAME"
    from {{ ref('src_dim_channel_details') }}
)
select * from dim_channel_details