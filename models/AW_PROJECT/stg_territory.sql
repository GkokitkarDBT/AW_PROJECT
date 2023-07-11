WITH TERRITORY AS (
    SELECT 
        SALES_TERRITORY_KEY,
        COUNTRY,
        REGION,
        CONTINENT
    FROM {{ source('stg_products', 'aw_territory') }}
)

SELECT * FROM TERRITORY