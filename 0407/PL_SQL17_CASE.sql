SET SERVEROUTPUT ON;
DECLARE
    V_SCORE NUMBER := 89;
BEGIN
    CASE
        WHEN V_SCORE >= 90 THEN
            DBMS_OUTPUT.PUT_LINE('A학점');
        WHEN V_SCORE >= 80 THEN
            DBMS_OUTPUT.PUT_LINE('B학점');
        WHEN V_SCORE >= 70 THEN
            DBMS_OUTPUT.PUT_LINE('C학점');  
        WHEN V_SCORE >= 60 THEN
            DBMS_OUTPUT.PUT_LINE('D학점');
        ELSE DBMS_OUTPUT.PUT_LINE('F학점');
    END CASE;
END;
/
--B학점