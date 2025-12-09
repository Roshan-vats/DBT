{{ 
  config(
    materialized='table',
  ) 
}}

WITH dim_channel AS ( 
    SELECT * FROM {{ ref('stg_dim_channel_details') }}
)
SELECT * FROM dim_channel