----------------------------------------------------------------------------------------------------
-- File name       : user_addresses1
-- Author          : Sonali/Neha
-- Created         : 06-Jun-2018
-- Description     : Contains user address information
-----------------------------------------------------------------------------------------------------
--  Date          Author          Version    Reason
-------------- ---------------    -------- ----------------------------------------------------------
-- 06-Jun-2018    Sonali/Neha          1.0       Initial creation
-----------------------------------------------------------------------------------------------------




create table users_addresses1 (
	User_ID INT,
    Address_ID INT,
	Address VARCHAR(50),
	City VARCHAR(50),
	State VARCHAR(50),
	Country VARCHAR(50),
	CountryCode VARCHAR(50),
	PostalCode VARCHAR(50)
);