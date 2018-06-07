
CREATE USER ecomapp IDENTIFIED BY ecomapp;
GRANT CONNECT TO ecomapp;
GRANT CONNECT, RESOURCE, DBA TO ecomapp;
GRANT CREATE SESSION TO ecomapp;
ALTER USER ecomapp IDENTIFIED BY ecomapp ACCOUNT UNLOCK;

create table users_registered (
	User_ID INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	Phone_no VARCHAR(50),
	Date_of_Birth DATE
);


select * from all_tables where upper(owner)='ECOMAPP';


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

create table users_addresses (
	User_ID INT,
    Address_ID INT,
	Address VARCHAR(50),
	City VARCHAR(50),
	State VARCHAR(50),
	Country VARCHAR(50),
	CountryCode VARCHAR(50),
	PostalCode VARCHAR(50)
);


----------------------------------------------------------------------------------------------------
-- File name       : users_geo_location
-- Author          : Gaurav
-- Created         : 06-Jun-2018
-- Description     : Contains users Geographical location data
-----------------------------------------------------------------------------------------------------
--  Date          Author          Version    Reason
-------------- ---------------    -------- ----------------------------------------------------------
-- 06-Jun-2018    Gaurav          1.0       Initial creation
-----------------------------------------------------------------------------------------------------
create table users_geo_location (
	Geo_Loc_id INT,
	User_id INT,
	Address_id VARCHAR(50),
	Latitude VARCHAR(50),
	Longitude VARCHAR(50)
);

create table product_taxonomies
----------------------------------------------------------------------------------------------------
-- File name       : product_taxonomies.tbl
-- Author          : Abhishek
-- Created         : 05-Jun-2018
-- Description     : Contains product family infomation
-----------------------------------------------------------------------------------------------------
--  Date          Author          Version    Reason
-------------- ---------------    -------- ----------------------------------------------------------
-- 05-JUn-2018    Abhishek        1.0       
-----------------------------------------------------------------------------------------------------
(
    taxonomy_id number,
    name varchar2(100),
    created_at date,
    updated_at date
);


----------------------------------------------------------------------------------------------------
-- File name       : product_taxonomies.tbl
-- Author          : Abhishek
-- Created         : 05-Jun-2018
-- Description     : Contains product family infomation
-----------------------------------------------------------------------------------------------------
--  Date          Author          Version    Reason
-------------- ---------------    -------- ----------------------------------------------------------
-- 05-JUn-2018    Abhishek        1.0       
-----------------------------------------------------------------------------------------------------
CREATE TABLE products (
    product_id             NUMBER,
    name                   VARCHAR2(50),
    description            VARCHAR2(50),
    created_at             DATE,
    updated_at             DATE,
    permalink              VARCHAR2(250),
    available_on           DATE,
    shipping_category_id   NUMBER,
    count_on_hand          NUMBER
);

create table Product_Variant (
	Product_price Number(10),
	Product_Weight Number(10),
	Product_Height Number(10),
	Product_Width Number(10),
	Product_Depth Number(10),
	Product_DeletedAt Date
);
