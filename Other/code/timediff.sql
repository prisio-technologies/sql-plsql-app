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
and y.minutes_stay is not null;
