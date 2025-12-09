{{ 
  config(
    materialized='table'
  ) 
}}

WITH dim_location AS ( 
    SELECT * FROM {{ ref('stg_dim_location_details') }}
)
SELECT * FROM dim_location