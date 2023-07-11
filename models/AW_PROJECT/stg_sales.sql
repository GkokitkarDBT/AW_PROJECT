WITH SALES as (
    SELECT 
        ORDER_DATE, 
        PRODUCT_KEY,
        CUSTOMER_KEY,
        TERRITORY_KEY,
        ORDER_QTY
    FROM {{ source('stg_products', 'aw_sales') }}
)

SELECT * FROM SALES