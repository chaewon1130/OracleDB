-- EMPNO = 7839�� KING(����)��

SELECT LPAD(ENAME, LEVEL * 4, '*') ENAME,
        LEVEL
FROM EMP
CONNECT BY PRIOR EMPNO = MGR
START WITH EMPNO = 7839;
;

SELECT LPAD(ENAME, LEVEL * 4, '*') ENAME,
        LEVEL
FROM EMP
CONNECT BY EMPNO = PRIOR MGR
START WITH EMPNO = 7839;
;