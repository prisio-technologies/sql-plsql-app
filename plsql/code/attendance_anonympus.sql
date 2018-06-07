SET SERVEROUTPUT ON;

DECLARE
    CURSOR c1 IS SELECT
        id,
        employee_id,
        punchtime,
        direction,
        justification
                 FROM
        attendance
                 WHERE
        employee_id = 111
        AND trunc(punchtime) = '03-Jan-2018'
    ORDER BY
        punchtime;


    CURSOR c_valid IS SELECT
        id,
        employee_id,
        punchtime,
        direction,
        justification
            FROM
        attendance
            WHERE
        employee_id = 111
        AND trunc(punchtime) = '03-Jan-2018'
        and nvl(JUSTIFICATION,'NA') not like '%-ERR'
    ORDER BY
        punchtime;

    v_direction attendance.direction%type;
    v_emp number := 111;
    v_id number:=-1;
    v_counter pls_integer :=0;
    duration number(10,2):=0.00;
    v_timestap timestamp;

BEGIN

--validation of records
    select min(id) into v_id from attendance where employee_id=v_emp;
    select direction into v_direction from attendance where id = v_id;
    
    -- first record has to be in
    if upper(v_direction) != 'IN' then
        dbms_output.put_line('Invalid Record');
        
        update attendance 
        set justification = justification||'-ERR'
        WHERE id= v_id;
        commit;
        
    end if;

    -- 
    
    FOR c1_rec IN c_valid LOOP
        v_counter := v_counter +1; 
        dbms_output.put_line('PRINT'||V_COUNTER);
        --check if even is always OUT and odd is always IN.
        if mod(v_counter,2) = 1 then
            dbms_output.put_line(v_counter||'-Odd'); -- IN
             if upper(c1_rec.direction) not like '%IN' then
                    dbms_output.put_line('Error Record Found');
                    v_counter := v_counter -1; 
                    update attendance 
                    set justification = justification||'-ERR'
                    WHERE id= c1_rec.id;
             end if;            
        else
            dbms_output.put_line(v_counter||'-Even'); -- IN
             if upper(c1_rec.direction) not like '%OUT' then
                    v_counter := v_counter -1; 
                    dbms_output.put_line('Error Record Found');
                    update attendance 
                    set justification = justification||'-ERR'
                    WHERE id= c1_rec.id;
             end if;            
        end if;  
    END LOOP;
  
END;