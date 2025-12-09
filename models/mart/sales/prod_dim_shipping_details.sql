{{ 
  config(
    materialized='table'
  ) 
}}

WITH dim_shipping_details AS ( 
    SELECT * FROM {{ ref('stg_dim_shipping_details') }}
)
SELECT * FROM dim_shipping_details