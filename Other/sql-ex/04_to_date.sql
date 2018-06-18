-- Let's look at some Oracle TO_DATE function examples and explore how to use the TO_DATE function in Oracle/PLSQL.

-- For example:

TO_DATE('2003/07/09', 'yyyy/mm/dd')
-- Result: date value of July 9, 2003

TO_DATE('070903', 'MMDDYY')
-- Result: date value of July 9, 2003

TO_DATE('20020315', 'yyyymmdd')
-- Result: date value of Mar 15, 2002
-- You could use the TO_DATE function with the dual table as follows:

SELECT TO_DATE('2015/05/15 8:30:25', 'YYYY/MM/DD HH:MI:SS')
FROM dual;