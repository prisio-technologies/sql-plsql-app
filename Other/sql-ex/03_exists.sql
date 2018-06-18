-- Example - With SELECT Statement
-- Let's look at a simple example.

-- The following is a SELECT statement that uses the EXISTS condition:

SELECT *
FROM customers
WHERE EXISTS (SELECT *
              FROM order_details
              WHERE customers.customer_id = order_details.customer_id);
              
-- This Oracle EXISTS condition example will return all records from the customers table where there is at least one record in the order_details table with the matching customer_id.

-- Example - With SELECT Statement using NOT EXISTS
-- The Oracle EXISTS condition can also be combined with the NOT operator.

-- For example,

SELECT *
FROM customers
WHERE NOT EXISTS (SELECT *
                  FROM order_details
                  WHERE customers.customer_id = order_details.customer_id);