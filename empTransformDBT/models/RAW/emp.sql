
with emp as(
    SELECT $1
    from @MYDB.POC.EMP_POC/t1.json
    (FILE_FORMAT =>
    mydb.utils.json_format
    ) 
)
select 
$1:"Emp ID" as EmpID,
$1:"Name Prefix"::varchar as Name_Prefix,
$1:"First Name"::varchar as First_Name,
$1:"Middle Initial"::varchar as Middle_Initial,
$1:"Month Name of Joining"::varchar as Month_Name_of_Joining,
$1:"Month of Joining"::varchar as Month_of_Joining,
$1:"Mother's Maiden Name"::varchar as Mothers_Maiden_Name,
$1:"Mother's Name"::varchar as Mothers_Name,
$1:"Password"::varchar as Password,
$1:"Quarter of Joining"::varchar as Quarter_of_Joining,
$1:"Salary"::number as Salary, 
$1:"Short DOW"::varchar as Short_DOW,
$1:"Short Month"::varchar as Short_Month,
$1:"Time of Birth"::varchar as Time_of_Birth,
$1:"User Name"::varchar as UserName,
$1:"Weight in Kgs."::number as Weight_in_Kgs,
$1:"Year of Joining"::varchar as Year_of_Joining,
$1:"Age in Company (Years)"::number as Age_in_Company,
$1:"Age in Yrs."::number as Age_in_Yrs,
$1:"DOW of Joining"::varchar as DOW_of_Joining,
to_varchar(to_date(replace($1:"Date of Birth"::varchar,'/','-'),'MM-DD-YYYY'),'YYYY-MM-DD') as Date_of_Birth,
to_varchar(to_date(replace($1:"Date of Joining"::varchar,'/','-'),'MM-DD-YYYY'),'YYYY-MM-DD') as date_of_joining,
$1:"Day of Joining"::varchar as Day_of_Joining,
$1:"E Mail"::varchar as Email,
$1:"Father's Name"::varchar as Fathers_Name,
$1:"Gender"::varchar as Gender,
$1:"Half of Joining"::varchar as Half_of_Joining,
$1:"Last % Hike"::varchar as Last_per_Hike
from emp