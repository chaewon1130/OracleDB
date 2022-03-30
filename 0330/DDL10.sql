-- EMP_DDL
DROP TABLE emp_ddl;
CREATE TABLE emp_ddl(
    empno NUMBER(4),
    ename VARCHAR2(10),
    job VARCHAR2(9),
    mgr NUMBER(4),
    hiredate DATE,
    sal NUMBER(7, 2),
    comm NUMBER(7, 2),
    deptno NUMBER(2)   
);

DESC emp_ddl;

-- TABLE COMMENT
COMMENT ON TABLE EMP_DDL IS '사원';

-- COLUMN COMMENT
COMMENT ON COLUMN EMP_DDL.empno IS '사번' ;
COMMENT ON COLUMN EMP_DDL.ename IS '이름' ;
COMMENT ON COLUMN EMP_DDL.job IS '직급' ;
COMMENT ON COLUMN EMP_DDL.mgr IS '매니저' ;
COMMENT ON COLUMN EMP_DDL.hiredate IS '입사일' ;
COMMENT ON COLUMN EMP_DDL.sal IS '급여' ;
COMMENT ON COLUMN EMP_DDL.comm IS '수당' ;
COMMENT ON COLUMN EMP_DDL.deptno IS '부서번호' ;

