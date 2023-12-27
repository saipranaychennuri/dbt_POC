--saipranay

with emp_address_raw AS(
    SELECT $1
    from @MYDB.POC.EMP_POC/t2.json
    (FILE_FORMAT =>
    mydb.utils.json_format
    )
)
SELECT 
    $1:"City" as city,
    $1:"County" as country,
    $1:"Emp ID" as emp_id,
    $1:"Opr" as Opr,
    $1:"Phone No." as Phone_no,
    $1:"Place Name" as Place_name,
    $1:"Region" as Region,
    $1:"SSN" as ssn,
    $1:"State" as state,
    $1:"Zip" as zip
FROM emp_address_raw