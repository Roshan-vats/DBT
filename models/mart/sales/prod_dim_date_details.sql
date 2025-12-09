{{ 
  config(
    materialized='table'
  ) 
}}

WITH dim_date AS ( 
    SELECT * FROM {{ ref('stg_dim_date_details') }}
)
SELECT * FROM dim_date