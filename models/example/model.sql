    
with source_data as (
    select * from TESTDBT.DBTSCHEMA.people2
    
    

)

select round(PERSONID,0),LASTNAME as LAST_NAME,FIRSTANAME as FIRST_NAME
from source_data