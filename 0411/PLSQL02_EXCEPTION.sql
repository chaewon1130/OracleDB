-- 문자열을 숫자데이터에 넣는오류
DECLARE
    V_WRONG NUMBER;
BEGIN
    -- 문자열 -> NUMBER
    SELECT DNAME INTO V_WRONG
    FROM DEPT
    WHERE DEPTNO = 10;
END;
/

--ORA-06502: PL/SQL: 수치 또는 값 오류: 문자를 숫자로 변환하는데 오류입니다
