DECLARE
    -- 커서 데이터를 저장할 ROWTYPE변수 선언
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 커서 선언
    CURSOR c1 IS
    SELECT DEPTNO, DNAME, LOC
    FROM DEPT;

BEGIN
    -- 커서 열기
    OPEN c1;
    
    LOOP
        -- 커서로부터 데이터 추출
        FETCH c1 INTO V_DEPT_ROW;
        
        -- 더 이상 데이터가 없으면
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || V_DEPT_ROW.DEPTNO
            || ', DNAME : ' || V_DEPT_ROW.DNAME
            || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    
    CLOSE c1;
END;
/


--출력
--DEPTNO : 10, DNAME : ACCOUNTING, LOC : NEW YORK
--DEPTNO : 20, DNAME : RESEARCH, LOC : DALLAS
--DEPTNO : 30, DNAME : SALES, LOC : CHICAGO
--DEPTNO : 40, DNAME : OPERATIONS, LOC : BOSTON