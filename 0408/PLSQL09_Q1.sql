-- P457 Q1

CREATE TABLE EMP_RECORD
AS (
    SELECT *
    FROM EMP
    WHERE 1 = 2
);

DECLARE
    TYPE REC_EMP IS RECORD(
        EMPNO EMP.EMPNO%TYPE,
        ENAME EMP.ENAME%TYPE,
        JOB EMP.JOB%TYPE,
        MGR EMP.MGR%TYPE,
        HIREDATE EMP.HIREDATE%TYPE,
        SAL EMP.SAL%TYPE,
        COMM EMP.COMM%TYPE,
        DEPTNO EMP.DEPTNO%TYPE
    );
    
    emp_rec REC_EMP;
BEGIN
    emp_rec.empno := 1111;
    emp_rec.ename := 'TEST_USER';
    emp_rec.job := 'TEST_JOB';
    emp_rec.mgr := NULL;
    emp_rec.hiredate := '18/03/01';
    emp_rec.sal := 3000;
    emp_rec.comm := NULL;
    emp_rec.deptno := 40;
    
    INSERT INTO EMP_RECORD
        VALUES emp_rec;
END;
/
SELECT * FROM EMP_RECORD;
COMMIT;