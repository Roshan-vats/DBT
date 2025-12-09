With dim_product_details AS ( 
    select 
       "PRODUCT_ID",
        "SKU",
        "PRODUCT",
        "STANDARD_COST",
        "COLOR",
        "LIST_PRICE",
        "MODEL",
        "PRODUCT_SUB_CATEGORY",
        "PRODUCT_CATEGORY"
    from {{ ref('src_dim_product_details') }}
)
select * from dim_product_details