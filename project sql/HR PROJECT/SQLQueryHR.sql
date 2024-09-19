SELECT * FROM hrdata

--Employee Count
SELECT SUM(employee_count) as Employee_Count FROM hrdata

--For high school education
SELECT SUM(employee_count) as High_School_Count FROM hrdata
WHERE education ='High School'

--For department
SELECT SUM(employee_count) as dept_wise_Count FROM hrdata
WHERE department ='Sales'


--For education field wise
SELECT SUM(employee_count) as education_field_wise_Count FROM hrdata
WHERE education_field ='Medical'



--Attrition Count:
SELECT 
    ROUND(
        (
            CAST(SUM(CASE WHEN attrition = 'Yes' THEN 1 ELSE 0 END) AS FLOAT) / 
            SUM(employee_count)
        ) * 100, 
        2
    ) AS attrition_percentage
FROM hrdata;

--attrition count department wise
SELECT 
    ROUND(
        (
            CAST(SUM(CASE WHEN attrition = 'Yes'AND department = 'Sales' THEN 1 ELSE 0 END) AS FLOAT) / 
            SUM(employee_count)
        ) * 100, 
        2
    ) AS attrition_percentage
FROM hrdata
WHERE department = 'Sales'


--Active Employee:
select sum(employee_count) - (select count(attrition) from hrdata  where attrition='Yes') AS Active_Employee from hrdata;


--Active Employee Gender wise
select sum(employee_count) - (select count(attrition) from hrdata  where attrition='Yes' and gender = 'Male') 
AS Active_Employee from hrdata
WHERE gender = 'Male'



--Average Age:
select round(avg(age),0) from hrdata;



--Attrition by Gender
select gender, count(attrition) as attrition_count from hrdata
where attrition='Yes'
group by gender
order by count(attrition) desc;


--Attrition by Gender and filter acc to education
select gender, count(attrition) as attrition_count from hrdata
where attrition='Yes' and  education= 'High School'
group by gender
order by count(attrition) desc;



--Department wise Attrition:
select department, count(attrition), round((cast (count(attrition) as numeric) / 
(select count(attrition) from hrdata where attrition= 'Yes')) * 100, 2) as pct from hrdata
where attrition='Yes'
group by department 
order by count(attrition) desc;



--Education Field wise Attrition:
select education_field, count(attrition) as attrition_count from hrdata
where attrition='Yes'
group by education_field
order by count(attrition) desc;



--No of Employee by Age Group
SELECT age,  sum(employee_count) AS employee_count FROM hrdata
GROUP BY age
order by age;


--Attrition Rate by Gender for different Age Group
select age_band, gender, count(attrition) as attrition, 
round((cast(count(attrition) as numeric) / (select count(attrition) from hrdata where attrition = 'Yes')) * 100,2) as pct
from hrdata
where attrition = 'Yes'
group by age_band, gender
order by age_band, gender desc;


