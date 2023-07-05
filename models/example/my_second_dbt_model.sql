
-- Use the `ref` function to select from other models
with 
Gaurav as (
select PERSONID, FIRSTANAME as FIRSTNAME, CITY
from {{ ('TESTDBT.DBTSCHEMA.people2') }}
)
select * from Gaurav