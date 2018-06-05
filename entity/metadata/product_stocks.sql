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
	Warehouse INT Foreign key
);