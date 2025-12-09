With fact_sales AS (
    select 
        "sales_id",
        "product_id",
        "sales_amount",
        "forecast_sales",
        "location_id",
        "Date",
        "quantity",
        "cost"
    from {{ ref('src_fact_sales') }}
)
select * from fact_sales