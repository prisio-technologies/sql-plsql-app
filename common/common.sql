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


