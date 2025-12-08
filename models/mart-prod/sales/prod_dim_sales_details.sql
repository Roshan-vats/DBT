{{ 
  config(
    materialized='table'
  ) 
}}

WITH dim_sales_details AS ( 
    SELECT * FROM {{ ref('int_dim_sales_details') }}
)
SELECT * FROM dim_sales_details