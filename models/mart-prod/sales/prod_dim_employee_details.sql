{{ 
  config(
    materialized='table',
    schema = "SALES"
  ) 
}}

WITH dim_employee AS ( 
    SELECT * FROM {{ ref('int_dim_employee_details') }}
)
SELECT * FROM dim_employee