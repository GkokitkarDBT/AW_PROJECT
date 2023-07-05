{{
    config(
        materialized='table'
    )
}}

SELECT name
FROM people
WHERE PERSONID = {{ 102}};