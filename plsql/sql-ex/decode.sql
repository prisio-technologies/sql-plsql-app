Question: I need to write a DECODE statement that will return the following:

If yrs_of_service < 1 then return 0.04
If yrs_of_service >= 1 and < 5 then return 0.04
If yrs_of_service > 5 then return 0.06

How can I do this?

Answer: You will need to create a formula that will evaluate to a single number for each one of your ranges.

For example:

SELECT emp_name,
DECODE(TRUNC (( yrs_of_service + 3) / 4), 0, 0.04,
                                          1, 0.04,
                                          0.06) as perc_value
FROM employees;


---------------

You could use the DECODE function in a SQL statement as follows:

SELECT supplier_name,
DECODE(supplier_id, 10000, 'IBM',
                    10001, 'Microsoft',
                    10002, 'Hewlett Packard',
                    'Gateway') result
FROM suppliers;
The above DECODE statement is equivalent to the following IF-THEN-ELSE statement:

IF supplier_id = 10000 THEN
   result := 'IBM';

ELSIF supplier_id = 10001 THEN
   result := 'Microsoft';

ELSIF supplier_id = 10002 THEN
   result := 'Hewlett Packard';

ELSE
   result := 'Gateway';

END IF;