With dim_date_details AS (
    select 
        "date_id",
        "date",
        "weekday_name",
        "month_name",
        "year",
        "day_of_month",
        "Quarter"
    from {{ ref('src_dim_date_details') }}
)
select * from dim_date_details