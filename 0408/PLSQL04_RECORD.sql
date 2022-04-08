-- REC_DEPT, REC_EMP
-- REC_EMP에 REC_DEPT 포함
-- DINFO 키워드

DECLARE
    -- DEPT RECORD 정의
    TYPE REC_DEPT IS RECORD(
        DEPTNO DEPT.DEPTNO%TYPE,
        DNAME DEPT.DNAME%TYPE,
        LOC DEPT.LOC%TYPE
    );
    
    -- EMP RECORD 정의
    TYPE REC_EMP IS RECORD(
        EMPNO EMP.EMPNO%TYPE,
        ENAME EMP.ENAME%TYPE,
        -- DEPT 레코드 포함
        DINFO REC_DEPT
    );
    
    -- EMP RECORD 선언
    EMP_REC REC_EMP;
BEGIN
    SELECT t1.empno,
        t1.ename,
        t2.deptno,
        t2.dname,
        t2.loc
    INTO EMP_REC.EMPNO,
        EMP_REC.ENAME,
        EMP_REC.DINFO.DEPTNO,
        EMP_REC.DINFO.DNAME,
        EMP_REC.DINFO.LOC
    FROM emp t1, dept t2
    WHERE t1.deptno = t2.deptno
        AND t1.empno = 7788;
    
    -- 조회 데이터 출력
    DBMS_OUTPUT.PUT_LINE('EMPNO : ' || EMP_REC.EMPNO);
    DBMS_OUTPUT.PUT_LINE('ENAME : ' || EMP_REC.ENAME);
    DBMS_OUTPUT.PUT_LINE('DEPTNO : ' || EMP_REC.DINFO.DEPTNO);
    DBMS_OUTPUT.PUT_LINE('DNAME : ' || EMP_REC.DINFO.DNAME);
    DBMS_OUTPUT.PUT_LINE('LOC : ' || EMP_REC.DINFO.LOC);

END;
/


--출력
--EMPNO : 7788
--ENAME : SCOTT
--DEPTNO : 20
--DNAME : RESEARCH
--LOC : DALLAS