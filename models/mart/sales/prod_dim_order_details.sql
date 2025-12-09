{{ 
  config(
    materialized='table'
  ) 
}}

WITH dim_product_details AS ( 
    SELECT * FROM {{ ref('stg_dim_product_details') }}
)
SELECT * FROM dim_product_details