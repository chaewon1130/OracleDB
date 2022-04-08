DECLARE
    CURSOR c1 IS
    SELECT DEPTNO, DNAME, LOC
    FROM DEPT;
    
BEGIN
    -- 커서 FOR LOOP(자동 OPEN, FETCH, CLOSE)
    FOR c1_rec IN c1 LOOP
        DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || c1_rec.deptno
            || ', DNAME : ' || c1_rec.dname
            || ', LOC : ' || c1_rec.loc);
    END LOOP;
END;
/


--출력
--DEPTNO : 10, DNAME : ACCOUNTING, LOC : NEW YORK
--DEPTNO : 20, DNAME : RESEARCH, LOC : DALLAS
--DEPTNO : 30, DNAME : SALES, LOC : CHICAGO
--DEPTNO : 40, DNAME : OPERATIONS, LOC : BOSTON