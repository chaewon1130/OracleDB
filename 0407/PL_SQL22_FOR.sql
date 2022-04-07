SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN REVERSE 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE('i = ' || i);
    END LOOP;
END;
/


--i = 5
--i = 4
--i = 3
--i = 2
--i = 1