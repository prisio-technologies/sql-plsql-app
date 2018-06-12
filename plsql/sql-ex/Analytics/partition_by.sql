--https://www.youtube.com/watch?v=KwEjkpFltjc
--total running count in  each row

--count(gender) OVER (PARTITION BY gender)
--Partition by partitions table by values in specified column in over, 
--ex. gender, which has M, F, and 
--now apply the group function min, max, avg, count etc over the partitioned data


SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    salary,
    COUNT(*) OVER(
        PARTITION BY job_id
    )
FROM
    employees
where salary > 15000;

--difference of salary from peer employees
SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    salary,
    max(salary) OVER(
        PARTITION BY job_id
    ),
    max(salary) OVER(
        PARTITION BY job_id ) -salary "Salary Delta"
FROM
    employees;
    

--difference of salary from peer employees
SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    salary,
    max(salary) OVER(
        PARTITION BY job_id
    ) max_salary,
    min(salary) OVER(
        PARTITION BY job_id ) min_salary
FROM
    employees;

SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    salary,
    max(salary) OVER(
        PARTITION BY job_id
    ) max_salary,
    min(salary) OVER(
        PARTITION BY job_id ) min_salary
FROM
    employees;

--find list of employees getting more than avg salary
--% avg salary    
SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    salary,
    max(salary) OVER(
        PARTITION BY job_id
    ) max_salary,
    min(salary) OVER(
        PARTITION BY job_id ) min_salary,
        avg(salary) OVER(
        PARTITION BY job_id ) avg_salary    
FROM
    employees;

--salary less than avg salary
select first_name , salary, avg_salary
from
(SELECT
    employee_id,
    first_name,
    last_name,
    job_id,
    salary,
    max(salary) OVER(
        PARTITION BY job_id
    ) max_salary,
    min(salary) OVER(
        PARTITION BY job_id ) min_salary,
        avg(salary) OVER(
        PARTITION BY job_id ) avg_salary    
FROM
    employees
    where 1=1) x
where 1=1
and x.salary < avg_salary
    ;
-------------------------------------------------
