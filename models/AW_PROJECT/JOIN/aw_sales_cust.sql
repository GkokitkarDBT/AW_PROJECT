{{
    config(
        materialized='table'
    )
}}
with sales as (select * from {{ ref('stg_sales') }}),
     product as (select * from {{ ref('stg_products') }}),
     cust  as (select * from {{ ref('stg_customer') }}),
     terr as (select * from {{ ref('stg_territory') }})

select 
s.*,
t.REGION,
t.COUNTRY,
t.CONTINENT,
p.product_name,
p.Product_SKU,
p.product_cost,
p.product_price,
concat(c.FIRST_NAME, ' ',c.LAST_NAME) as FULL_NAME,
c.GENDER,
c.ANNUAL_INCOME,
c.OCCUPATION

from sales as s
left join cust as c on s.CUSTOMER_KEY = c.CUSTOMER_KEY
left join product as p on s.product_key = p.product_key
left join terr as t on s.TERRITORY_KEY = t.SALES_TERRITORY_KEY

where p.Product_SKU is not null



     