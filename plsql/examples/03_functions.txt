CREATE OR REPLACE FUNCTION join_strings
( string1 VARCHAR2
, string2 VARCHAR2 ) 
RETURN VARCHAR2 IS
BEGIN
    RETURN string1 ||' '|| string2||'.';
END;
/

-- You can now query the function from SQL:
SELECT join_strings('Hello','World') FROM dual;

