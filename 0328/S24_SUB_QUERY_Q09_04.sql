-- P263 Q4

SELECT  t1.empno,
    t1.ename,
    t1.sal,
    t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
    AND sal > ALL (
    SELECT sal
    FROM emp
    WHERE job = 'SALESMAN'
)
ORDER BY t1.empno
;

SELECT  t1.empno,
    t1.ename,
    t1.sal,
    t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
    AND sal > (
    SELECT MAX(sal)
    FROM emp
    WHERE job = 'SALESMAN'
)
ORDER BY t1.empno
;