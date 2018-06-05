BEGIN
    NULL;
END;
/


-- The SQL*Plus SERVEROUTPUT environment variable opens an output buffer, and the DBMS_
-- OUTPUT.PUT_LINE() function prints a line of output. All declarations, statements, and blocks
-- are terminated by a semicolon.
SET SERVEROUTPUT ON SIZE 1000000
BEGIN
dbms_output.put_line('Hello World.');
END;
/


-- SQL*Plus supports the use of substitution variables in the interactive console, which are
-- prefaced by an ampersand, &. Substitution variables are variable-length strings or numbers.
-- You should never assign dynamic values in the declaration block, like substitution variables.
-- The following program defines a variable and assigns it a value:
DECLARE
    my_var VARCHAR2(30);
BEGIN
    my_var := '&input';
    dbms_output.put_line('Hello '|| my_var );
END;
/

-- The following exception.sql program demonstrates how an exception block manages an
-- error when the string is too long for the variable:
DECLARE
    my_var VARCHAR2(10);
BEGIN
    my_var := '&input';
    dbms_output.put_line('Hello '|| my_var );
EXCEPTION
    WHEN others THEN
        dbms_output.put_line(SQLERRM);
END;
/


-- Define a Boolean variable.
DECLARE
    my_var BOOLEAN;
BEGIN
-- Use an NVL function to substitute a value for evaluation.
    IF NOT NVL(my_var,FALSE) THEN
        dbms_output.put_line('This should happen!');
    ELSE
        dbms_output.put_line('This can''t happen!');
    END IF;
END;
/


-- demonstrates a searched CASE statement:
BEGIN
    CASE TRUE
        WHEN (1 > 3) THEN
            dbms_output.put_line('One is greater than three.');
        WHEN (3 < 5) THEN
            dbms_output.put_line('Three is less than five.');
        WHEN (1 = 2) THEN
            dbms_output.put_line('One equals two.');
        ELSE
            dbms_output.put_line('Nothing worked.');
    END CASE;
END;
/

-- cursors simple example
DECLARE
    CURSOR c IS SELECT item_title FROM item;
BEGIN
    FOR i IN c LOOP
        dbms_output.put_line('The title is ['||i.item_title||']');
    END LOOP;
END;
/

-- Loop ex2
BEGIN
FOR i IN (SELECT item_title FROM item) LOOP
dbms_output.put_line('The title is ['||i.item_title||']');
END LOOP;
END;
/


DECLARE
    title item.item_title%TYPE;
    CURSOR c IS SELECT item_title FROM item;
BEGIN
    OPEN c;
LOOP
    FETCH c INTO title;
    EXIT WHEN c%NOTFOUND;
    dbms_output.put_line('The title is ['||title||']');
END LOOP;
    CLOSE c;
END;
/

DECLARE
    title item.item_title%TYPE;
    CURSOR c IS SELECT item_title FROM item;
BEGIN
    OPEN c;
    WHILE c%ISOPEN LOOP
        FETCH c INTO title;
        IF c%NOTFOUND THEN
        CLOSE c;
        END IF;
    dbms_output.put_line('The title is ['||title||']');
    END LOOP;
END;
/

