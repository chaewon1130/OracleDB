-- DEPT_TCL 테이블 DML작업
INSERT INTO dept_tcl
    VALUES(50, 'DATABASE', 'SEOUL');

UPDATE dept_tcl
SET loc = 'BUSAN'
WHERE deptno = 40;

DELETE FROM dept_tcl
WHERE dname = 'RESEARCH';

SELECT * FROM dept_tcl;


-- COMMIT : 트랜잭션 영구반영
COMMIT;
SELECT * FROM dept_tcl;


-- ROLLBACK 해도 안바뀐다. 새로운 트랜잭션이 시작되서
ROLLBACK;
SELECT * FROM dept_tcl;