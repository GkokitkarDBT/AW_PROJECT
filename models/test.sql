{{ config(materialized="table") }}
with source_data as (select 'Mohan' as name)

select *
from source_data
