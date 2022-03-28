-- IN

SELECT empno,
    ename,
    job,
    sal,
    deptno
FROM emp
WHERE deptno IN (20, 30)
;