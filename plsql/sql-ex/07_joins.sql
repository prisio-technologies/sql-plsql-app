--joins
--https://www.youtube.com/watch?v=KTvYHEntvn8

create table tbl_country (
country_id number,
country_name varchar2(100)
);

create table tbl_state (
state_id number,
country_id number,
state_name varchar2(100)
)
;

insert into tbl_country (COUNTRY_ID, country_name) values (1,'India');
insert into tbl_country (COUNTRY_ID, country_name) values (2,'Nepal');
insert into tbl_country (COUNTRY_ID, country_name) values (4,'Sri Lanka');

commit;

insert into tbl_state (state_id, COUNTRY_ID, state_name) values (1,1,'Maharastra');
insert into tbl_state (state_id, COUNTRY_ID, state_name) values (2,1,'Punjab');
insert into tbl_state (state_id, COUNTRY_ID, state_name) values (3,2,'Kathmandu');
insert into tbl_state (state_id, COUNTRY_ID, state_name) values (4,null,'California');

select * from tbl_country;
select * from tbl_state;

---------------------------------------------
--Inner join
select * from
tbl_country c,
tbl_state s
where c.COUNTRY_ID=s.COUNTRY_ID;

select * from
tbl_country c inner join
tbl_state s
on c.COUNTRY_ID=s.COUNTRY_ID;

-------------------------------------
-- Left Join
--all of data of left table will be displayed.
--all of left and matching data of right will be displayed.

select * from
tbl_country c,
tbl_state s
where c.COUNTRY_ID=s.COUNTRY_ID(+);

select * from tbl_country c left join tbl_state s
on c.COUNTRY_ID=s.COUNTRY_ID;

---------------------------------------
-------------------------------------
-- Right Join
--all of data of right table will be displayed.
--all of right and matching data of left will be displayed.

select * from
tbl_country c,
tbl_state s
where c.COUNTRY_ID(+)=s.COUNTRY_ID;

select * from tbl_country c right join tbl_state s
on c.COUNTRY_ID=s.COUNTRY_ID;
---------------------------------------
--Full Outer Join
--all of data of right table will be displayed.
--all of data of left will be displayed.

select * from
tbl_country c,
tbl_state s
where full outer join c.COUNTRY_ID =s.COUNTRY_ID;

select * from tbl_country c full outer join tbl_state s
on c.COUNTRY_ID=s.COUNTRY_ID;

----------------------------------------------------
--> place + sign where data is not present.
--ex. there is no state defined for srilanka, 
--hence when we want to print srilanka in output, place + towards state 
