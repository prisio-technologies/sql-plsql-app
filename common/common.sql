-- run from system user
ALTER USER hr IDENTIFIED BY hr ACCOUNT UNLOCK;

select * from ALL_TABLES;
SELECT * FROM ALL_SOURCE;
select * from v$version;
/*
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production
PL/SQL Release 11.2.0.2.0 - Production
"CORE	11.2.0.2.0	Production"
TNS for 64-bit Windows: Version 11.2.0.2.0 - Production
NLSRTL Version 11.2.0.2.0 - Production
*/
select * from ALL_TABLES where owner='HR';

select * from EMPLOYEES

select * from departments

--------------------------------------

SELECT COUNT(*) FROM EMP_DATA_TEST  WHERE GENDER = 'Female'

ddl
dml

--------------------------------

insert into EMP_DATA_TEST (id, first_name, last_name, email, gender, ip_address) values (1, 'Mallory', 'Courage', 'mcourage0@tinyurl.com', 'Female', '186.233.96.31');

DELETE FROM EMP_DATA_TEST WHERE GENDER = 'Female';

CREATE INDEX EMP_DATA_TEST_GENDER_I2 ON EMP_DATA_TEST (GENDER, FIRST_NAME);

--AND FIRST_NAME ='Mallory'



