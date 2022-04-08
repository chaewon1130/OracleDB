-- 커서에 파라미터 사용하기

DECLARE
    -- 커서에 입력할 변수
    V_DEPT_ROW DEPT%ROWTYPE;
    
    -- 명시적 커서 선언
    CURSOR c1 (p_deptno DEPT.DEPTNO%TYPE) IS
    SELECT deptno, dname, loc
    FROM dept
    WHERE deptno = p_deptno;
    
BEGIN
    -- 10번 부서용 커서
    OPEN c1(10);
    LOOP
        FETCH c1 INTO V_DEPT_ROW;
        
        -- 더 이상 데이터가 없으면 LOOP를 빠져나가라
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('10번부서 - DEPTNO : ' || V_DEPT_ROW.DEPTNO
            || ', DNAME : ' || V_DEPT_ROW.DNAME
            || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    CLOSE c1;
    -- 20번 부서용 커서 
    OPEN c1(20);
    LOOP
        FETCH c1 INTO V_DEPT_ROW;
        
        -- 더 이상 데이터가 없으면 LOOP를 빠져나가라
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('20번부서 - DEPTNO : ' || V_DEPT_ROW.DEPTNO
            || ', DNAME : ' || V_DEPT_ROW.DNAME
            || ', LOC : ' || V_DEPT_ROW.LOC);
    END LOOP;
    CLOSE c1;   
END;
/


--출력
--10번부서 - DEPTNO : 10, DNAME : ACCOUNTING, LOC : NEW YORK
--20번부서 - DEPTNO : 20, DNAME : RESEARCH, LOC : DALLAS