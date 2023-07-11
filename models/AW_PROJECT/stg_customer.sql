WITH CUSTOMER AS (
    SELECT 
        CUSTOMER_KEY,
	    FIRST_NAME,
	    LAST_NAME,
	    GENDER,
	    ANNUAL_INCOME,
	    EDUCATION_LEVEL,
	    OCCUPATION
    FROM {{ source('stg_products', 'aw_customer') }}
)

SELECT * FROM CUSTOMER