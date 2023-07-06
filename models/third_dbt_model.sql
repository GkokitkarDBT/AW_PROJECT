with 
Gaurav as (
select PERSONID, CITY
from {{ ('TESTDBT.DBTSCHEMA.people2') }}
where CITY = 'Bangalore'
)
select * from Gaurav