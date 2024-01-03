with emp_address_target as(
    select *
    from  {{ ref('emp_address_raw') }} t2
    LEFT JOIN  {{ ref('emp') }} t1
    ON t1.EmpID = t2.emp_id
)
select 
    emp_id as EmpID,
    NAME_PREFIX,
    FIRST_NAME,
    MIDDLE_INITIAL,
    -- LAST_NAME,
    SSN,
    PHONE_NO,
    PLACE_NAME,
    COUNTRY,
    CITY,
    STATE,
    ZIP,
    REGION
from emp_address_target
