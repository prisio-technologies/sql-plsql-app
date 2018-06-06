-- The following implements a stored procedure that uses a pass-by-reference
-- semantic to enclose a string in square brackets:
-- This is found in format_string.sql on the publisher's web site.
CREATE OR REPLACE PROCEDURE format_string( string_in IN OUT VARCHAR2 ) IS
BEGIN
    string_in := '['||string_in||']';
END;
/

--Call fn and procs
VARIABLE session_var VARCHAR2(30)
CALL join_strings('Hello','World') INTO :session_var;
CALL format_string(:session_var);


-- You also can use the EXECUTE statement with stored procedures. The following works exactly
-- like the CALL statement:
EXECUTE format_string(:session_var);


-- When you select the bind variable from the pseudo–DUAL table,
SELECT :session_var FROM dual;
-- you’ll see
-- [Hello World.]


The power to control the session rests with three commands. They were once called
transaction control language (TCL) commands. Some documentation now speaks of them as data
control language (DCL) commands. The book uses DCL to represent these three commands. The
problem is trying to disambiguate this group of commands from Berkeley’s Tcl. 
The commands are

The COMMIT statement Commits all DML changes made from the beginning of the
session or since the last ROLLBACK statement.

The SAVEPOINT statement Divides two epochs. An epoch is defined by the
transactions between two relative points of time. A SAVEPOINT delimits two epochs.

The ROLLBACK statement Undoes all changes from now to an epoch or named
SAVEPOINT, or now to the beginning of a SQL*Plus session.