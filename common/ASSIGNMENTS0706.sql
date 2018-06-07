
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


create table product_variant_attributes (
Product_Quality VARCHAR(9),
Product_Colour VARCHAR(50),
Product_Size VARCHAR(10),
Product_ID INT
);


----------------------------------------------------------------------------------------------------
-- File name       : product_stocks
-- Author          : Gaurav
-- Created         : 05-Jun-2018
-- Description     : Contains product stocks data
-----------------------------------------------------------------------------------------------------
--  Date          Author          Version    Reason
-------------- ---------------    -------- ----------------------------------------------------------
-- 05-Jun-2018    Gaurav          1.0       Initial creation
-- 05-JUn-2018    Abhishek        1.1       added warehouse FK const
-----------------------------------------------------------------------------------------------------

create table product_stocks (
	Product_id INT,
	Product_tax_id INT,
	Variant_id INT,
	Created_On DATE,
	Updated_On DATE,
	Stock_Qty INT,
	Warehouse INT
);

create table Orders (
	Order_ID INT,
	Order_Date DATE,
	Shipped_Date DATE,
	Order_Status_Flag VARCHAR(50),
	Comments VARCHAR(50),
	Customer_Number INT
);

create table Order_lines (
	Order_ID INT,
	Line_ID INT,
	Product_Code VARCHAR(50),
	Quantity INT,
	Price_Per_Quantity INT,
	Customer_Number INT
);


create table order_payments (
	Customer_Number INT,
	Check_Number INT,
	Payement_Date DATE,
	Amount INT
);


-------------------------------------------
drop SEQUENCE "ECOMAPP"."USERS_REGISTERED_S1" ;

CREATE SEQUENCE "ECOMAPP"."USERS_REGISTERED_S1" 
MINVALUE 10000 
MAXVALUE 9999999999999
INCREMENT BY 1 
START WITH 10000 ;

INSERT INTO users_registered (
    user_id,
    first_name,
    last_name,
    email,
    gender,
    phone_no,
    date_of_birth
) VALUES (
    users_registered_s1.NEXTVAL,
    'Hemant',
    '',
    'Hemant@prisio.com',
    'M',
    '123456778',
    '1-Jan-1995'
);

select * from USERS_REGISTERED;


select * from all_sequences where SEQUENCE_OWNER='ECOMAPP'

select users_registered_s1.CURRVAL from dual;

-------------------


select MAX(USER_ID) from USERS_REGISTERED;
10102

select * from USERS_REGISTERED WHERE LENGTH(EMAIL) > 30

select * from USERS_REGISTERED WHERE DATE_OF_BIRTH > SYSDATE - 10

SELECT SYSDATE FROM DUAL;

SELECT * FROM USERS_REGISTERED

select COUNT(GENDER), GENDER, LAST_NAME  from USERS_REGISTERED
WHERE 1=1
GROUP BY GENDER , LAST_NAME
HAVING 1=1
ORDER BY 1

G -> GROUP BY
H -> HAVING
O -> ORDER BY

