--generate a unique number

select row_number() over (order by employee_id) as emp_id , e.*
from 
employees e;

select mod(row_number() over (order by employee_id),2) as emp_id , e.*
from 
employees e;

--number as per job_id
--partion by job id
select 
row_number() over (order by employee_id) as emp_id,
row_number() over ( PARTITION by job_id order by job_id) as job_id_seq 
, e.*
from 
employees e order by job_id;

--number as per job_id
--partion by job id
select 
row_number() over (order by employee_id) as emp_id,
row_number() over ( PARTITION by job_id order by job_id) as job_id_seq ,
rank() over (order by job_id) as rank_job_id,
dense_rank() over (order by job_id) as dense_rank_job_id
, e.*
from 
employees e order by job_id;

