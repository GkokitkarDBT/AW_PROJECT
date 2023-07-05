{{ config(materialized="table") }}

select *
from {{ ref("test1.sql") }}
;
