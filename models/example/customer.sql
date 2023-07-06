with source_data as (
    select * from {{ source("SF1","CUSTOMER") }})

select *
from source_data
where C_CUSTKEY = 30001