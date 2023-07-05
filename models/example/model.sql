
with source_data as (
    select * from {{ ref("SNOWFLAKE_SAMPLE_DATA","CUSTOMER") }}

select *
from source_data
where C_CUSTKEY = 30001