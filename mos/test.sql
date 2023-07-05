select * from {{ ref("test.sql") }} where city = 1;
