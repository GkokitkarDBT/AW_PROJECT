WITH products AS (
    SELECT 
        product_key, 
        product_name,
        product_squ as Product_SKU,
        product_cost,    
        product_price

    FROM {{ source('stg_products', 'aw_product') }}
)

SELECT * FROM products