SET SERVEROUTPUT ON;

-- 1.
BEGIN
    FOR i IN 1..10 LOOP
        CONTINUE WHEN MOD(i, 2) = 0;
        DBMS_OUTPUT.PUT_LINE('���� i�� �� : ' || i);
    END LOOP;
END;
/


-- �ٸ�Ǯ��
BEGIN
    FOR i IN 1..10 LOOP
        IF MOD(i, 2) = 0 THEN
            CONTINUE;
        END IF;
        DBMS_OUTPUT.PUT_LINE('���� i�� �� : ' || i);
    END LOOP;
END;
/