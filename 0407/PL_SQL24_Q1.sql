SET SERVEROUTPUT ON;

-- 1.
BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN MOD(i, 2) = 0;
        DBMS_OUTPUT.PUT_LINE('현재 i의 값 : ' || i);
    END LOOP;
END;
/


-- 다른풀이
BEGIN
    FOR i IN 1..10 LOOP
        IF MOD(i, 2) = 0 THEN
            CONTINUE;
        END IF;
        DBMS_OUTPUT.PUT_LINE('현재 i의 값 : ' || i);
    END LOOP;
END;
/