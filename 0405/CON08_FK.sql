-- DEPT_FK에 데이터가 없는 상태에서 EMP_FK에 데이터 삽입
INSERT INTO emp_fk (
    empno,
    ename,
    job,
    mgr,
    hiredate,
    sal,
    comm,
    deptno
) VALUES (
    9999,
    'HONG',
    'CLERK',
    7788,
    TO_DATE('2017/04/03', 'YYYY/MM/DD'),
    1200,
    NULL,
    10
);
--오류 보고 -
--ORA-02291: 무결성 제약조건(SCOTT.EMPFK_DEPTNO_FK)이 위배되었습니다-
--부모 키가 없습니다

-- DEPT_FK 먼저 값 생성 후, EMP_FK값 생성
INSERT INTO dept_fk (
    deptno,
    dname,
    loc
) VALUES (
    10,
    'TEST_DNAME',
    'TEST_LOG'
);

SELECT * FROM EMP_FK;