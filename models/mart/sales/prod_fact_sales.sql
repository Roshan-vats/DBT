
With fact_sales AS (
    select 
        *
    from {{ ref('stg_fact_sales') }}
)
select * from fact_sales