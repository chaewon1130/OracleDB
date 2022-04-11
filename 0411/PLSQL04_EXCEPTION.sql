DECLARE
    V_WRONG NUMBER;
BEGIN
    DBMS_OUTPUT.PUT_LINE('1');
    -- 문자열 -> NUMBER
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO = 10;
    DBMS_OUTPUT.PUT_LINE('2');
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('예외 처리 : 수치 또는 값 오류 발생');
END;
/


--출력
--1
--예외 처리 : 수치 또는 값 오류 발생