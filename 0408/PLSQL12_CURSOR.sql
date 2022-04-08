-- 하나의 행만 조회되는 경우 vs SELECT INTO
DECLARE
    V_DEPT DEPT%ROWTYPE;
    -- 명시적 커서 선언
    CURSOR c1 IS (
        SELECT DEPTNO,
            DNAME,
            LOC
        FROM DEPT
        WHERE DEPTNO = 40
    );
BEGIN
    -- 커서 열기
    OPEN c1;
    -- 커서로부터 읽어온 데이터 사용
    FETCH c1 INTO V_DEPT;
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || V_DEPT.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || V_DEPT.LOC);
    CLOSE c1;
END;
/


-- 출력
--DEPTNO : 40
--DNAME : OPERATIONS
--LOC : BOSTON