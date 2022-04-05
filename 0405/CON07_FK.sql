-- DEPT_FK테이블 생성
CREATE TABLE DEPT_FK(
    DEPTNO NUMBER(2) CONSTRAINT DEPTFK_DEPTNO_PK PRIMARY KEY,
    DNAME VARCHAR2(14),
    LOC VARCHAR2(13)
);

-- EMP_FK테이블 생성
CREATE TABLE EMP_FK(
    empno NUMBER(4) CONSTRAINT EMPFK_EMPNO_PK PRIMARY KEY,
    ename VARCHAR2(10),
    job	VARCHAR2(9),
    mgr NUMBER(4),
    hiredate DATE,
    sal NUMBER(7,2),
    comm NUMBER(7,2),
    deptno NUMBER(2) CONSTRAINT EMPFK_DEPTNO_FK REFERENCES DEPT_FK(DEPTNO)
);

-- 제약조건 확인
SELECT t1.owner,
    t1.constraint_name,
    t1.constraint_type,
    t1.table_name,
    t1.r_owner,
    t1.r_constraint_name
FROM user_constraints t1
WHERE t1.table_name IN ('EMP_FK', 'DEPT_FK');