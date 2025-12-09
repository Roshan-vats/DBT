{{ 
  config(
    materialized='table'
  ) 
}}

WITH dim_distributor_details AS ( 
    SELECT * FROM {{ ref('stg_dim_distributor_details') }}
)
SELECT * FROM dim_distributor_details