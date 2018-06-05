----------------------------------------------------------------------------------------------------
-- File name       : user_registered
-- Author          : Sonali/Neha
-- Created         : 05-Jun-2018
-- Description     : Contains user information
-----------------------------------------------------------------------------------------------------
--  Date          Author          Version    Reason
-------------- ---------------    -------- ----------------------------------------------------------
-- 05-Jun-2018    Sonali/Neha          1.0       Initial creation
-----------------------------------------------------------------------------------------------------


create table users_registered (
	User_ID INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	Phone_no VARCHAR(50),
	Date_of_Birth DATE
);
