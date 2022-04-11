-- 문자열을 숫자데이터에 넣는오류
DECLARE
    V_WRONG NUMBER;
BEGIN
    -- 문자열 -> NUMBER
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO = 10;
    
EXCEPTION
    WHEN VALUE_ERROR THEN
        DBMS_OUTPUT.PUT_LINE('예외 처리 : 수치 또는 값 오류 발생');
END;
/


--출력
--예외 처리 : 수치 또는 값 오류 발생