{{ 
  config(
    materialized='table'
  ) 
}}

WITH dim_employee AS ( 
    SELECT * FROM {{ ref('stg_dim_employee_details') }}
)
SELECT * FROM dim_employee