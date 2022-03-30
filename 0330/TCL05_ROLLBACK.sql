-- DEPT_TCL 생성
CREATE TABLE dept_tcl
AS SELECT * FROM dept;

SELECT * FROM dept_tcl;


-- DEPT_TCL 테이블 DML작업
INSERT INTO dept_tcl
    VALUES(50, 'DATABASE', 'SEOUL');

UPDATE dept_tcl
SET loc = 'BUSAN'
WHERE deptno = 40;

DELETE FROM dept_tcl
WHERE dname = 'RESEARCH';

SELECT * FROM dept_tcl;


-- ROLLBACK : DML 작업들이 취소 되었는지 확인
-- 트랜잭션 취소
ROLLBACK;

SELECT * FROM dept_tcl;