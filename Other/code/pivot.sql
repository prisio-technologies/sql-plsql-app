select * from ATTENDANCE where employee_id=111
and trunc(punchtime)='03-Jan-2018'
order by PUNCHTIME;



select round(sum(minutes_stay)/60,2) Hr_stay from
(SELECT 
(extract( day from X.TIME_STAY ))*24*60 +
           abs(extract( hour from X.TIME_STAY ))*60 +
           abs(extract( minute from X.TIME_STAY )) Minutes_stay 
FROM(
select 
    max(case when col = 0 then PUNCHTIME end) - max(case when col = 1 then PUNCHTIME end) TIME_STAY
from
(
  select PUNCHTIME,  mod(rownum, 2) col,
    row_number() over(partition by mod(rownum, 2) order by PUNCHTIME) rn
from ATTENDANCE where employee_id=111
and trunc(punchtime)='03-Jan-2018' 
 and nvl(JUSTIFICATION,'NA') not like '%-ERR'
order by PUNCHTIME
) 
group by rn
) X
where 1=1 )
Y
where 1=1 
and y.minutes_stay is not null



select abs (extract( day from diff ))*24*60 +
           abs(extract( hour from diff ))*60 +
           abs(extract( minute from diff ))  total_mins
      from (select 
  to_timestamp_tz(      '14-Feb-17 07.00.00.000000000 PM +00:00'   , 'dd-mon-yyyy hh:mi:ssxff PM tzh:tzm') -
     to_timestamp_tz(    '15-Feb-17 07.00.00.000000000 PM +00:00'  , 'dd-mon-yyyy hh:mi:ssxff PM tzh:tzm')  diff
             from dual)

SELECT
    id,
    employee_id,
    punchtime in_time,
    direction,
    justification
FROM
    attendance
WHERE
    employee_id = 111
    AND trunc(punchtime) = '03-Jan-2018'
    AND nvl(justification,'NA') NOT LIKE '%-ERR'
    and upper(DIRECTION)='IN'
ORDER BY
    punchtime;


select tab_in.id, tab_out.id from
(SELECT
    id,
    employee_id,
    punchtime,
    direction,
    justification
FROM
    attendance
WHERE
    employee_id = 111
    AND trunc(punchtime) = '03-Jan-2018'
    AND nvl(justification,'NA') NOT LIKE '%-ERR'
    and upper(DIRECTION)='IN'
ORDER BY
    punchtime) tab_IN,
(SELECT
    id,
    employee_id,
    punchtime,
    direction,
    justification
FROM
    attendance
WHERE
    employee_id = 111
    AND trunc(punchtime) = '03-Jan-2018'
    AND nvl(justification,'NA') NOT LIKE '%-ERR'
    and upper(DIRECTION)='OUT'
ORDER BY
    punchtime) tab_OUT    
where 1=1

;

SELECT
    *
FROM
    (
        SELECT
            job_id,
            DEPARTMENT_ID,
            salary
        FROM
            employees
    )
        PIVOT ( SUM ( salary )
            FOR DEPARTMENT_ID
            IN ( '10' AS ten,'20' AS wel,'30' AS cen,'40' AS pol )
        );