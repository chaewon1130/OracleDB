SET SERVEROUTPUT ON;

DECLARE

BEGIN
    UPDATE dept
    SET dname = 'DATABASE'
    WHERE deptno = 50;
    
    DBMS_OUTPUT.PUT_LINE('갱신된 행의 수 : ' || SQL%ROWCOUNT);
    
    IF(SQL%FOUND) THEN
        DBMS_OUTPUT.PUT_LINE('갱신 대상 행 존재 여부 : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('갱신 대상 행 존재 여부 : FALSE');
    END IF;
    
    IF(SQL%ISOPEN) THEN
        DBMS_OUTPUT.PUT_LINE('커서의 OPEN 여부 : TRUE');
    ELSE
        DBMS_OUTPUT.PUT_LINE('커서의 OPEN 여부 : FALSE');
    END IF;
END;
/


--출력
--갱신된 행의 수 : 0
--갱신 대상 행 존재 여부 : FALSE
--커서의 OPEN 여부 : FALSE