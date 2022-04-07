SET SERVEROUTPUT ON;
DECLARE

BEGIN
    FOR i IN 1..5 LOOP
        DBMS_OUTPUT.PUT_LINE('i = ' || i);
    END LOOP;
END;
/


--i = 1
--i = 2
--i = 3
--i = 4
--i = 5