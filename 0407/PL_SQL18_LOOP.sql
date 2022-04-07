-- LOOP
SET SERVEROUTPUT ON;
DECLARE
    V_NUM NUMBER := 0;
BEGIN
    LOOP
        DBMS_OUTPUT.PUT_LINE('V_NUM : ' || V_NUM);
        V_NUM := V_NUM + 1;
        
        EXIT WHEN V_NUM > 5;
    END LOOP;
END;
/
--V_NUM : 0
--V_NUM : 1
--V_NUM : 2
--V_NUM : 3
--V_NUM : 4
--V_NUM : 5