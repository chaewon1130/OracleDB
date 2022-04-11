-- P478 Q1
-- LOOP방식
DECLARE
    V_EMP_ROW EMP%ROWTYPE;
    
    CURSOR c1 IS
    SELECT *
    FROM emp;
    
BEGIN
    OPEN c1;
    LOOP
        FETCH c1 INTO V_EMP_ROW;
        
        EXIT WHEN c1%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('EMPNO : ' || V_EMP_ROW.EMPNO
            || ', ENAME : ' || V_EMP_ROW.ENAME
            || ', JOB : ' || V_EMP_ROW.JOB
            || ', SAL : ' || V_EMP_ROW.SAL
            || ', DEPTNO : ' || V_EMP_ROW.DEPTNO);
    END LOOP;
    CLOSE c1;
END;
/

-- FOR LOOP방식

DECLARE
    CURSOR c1 IS
    SELECT * FROM EMP;
BEGIN
    FOR c1_rec IN c1 LOOP
        DBMS_OUTPUT.PUT_LINE('EMPNO : ' || c1_rec.empno
            || ', ENAME : ' || c1_rec.ename
            || ', JOB : ' || c1_rec.job
            || ', SAL : ' || c1_rec.sal
            || ', DEPTNO : ' || c1_rec.deptno);
    END LOOP;
END;
/