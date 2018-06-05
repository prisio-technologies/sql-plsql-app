-- 1. does not accept parameter.
-- 2. used for automation
-- 3. security checks
-- 4. auditing and logging, 
-- 5. complex integrity constraints


-- -----------------------------------

-- Parts:

-- a. trigger type: 
--     a. before, after
--     b. per statement or per row?
-- b. trigger event:
--     a. DML
--     b. db events
-- c. restriction: when clause.

-- d. Trigger Action: plsql logic

-- SAL or MGR column is updated in EMP table
-- ROW level trigger. field values can be modified.

-- new row insert logic
-- when clause: when sal > 3000
-- set the mgr to Precident if sal > 3000 

insert into EMP(emp_id, first_name, last_name, sal, mgr, dept_id) values ()

create or replace trigger assign_mgr
    before insert or update of sal, mgr on EMP
    for each row
    when (new.sal > 3000)
        begin
            :new.mgr := 7839;
        end;
