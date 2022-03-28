-- P262 Q2

SELECT t1.empno,
    t1.ename,
    t2.dname,
    TO_CHAR(t1.hiredate, 'YYYY-MM-DD') AS "HIREDATE",
    t2.loc,
    t1.sal,
    t3.grade
FROM emp t1, dept t2, salgrade t3
WHERE t1.deptno = t2.deptno
    AND sal > (
    SELECT avg(sal)
    FROM emp)
    AND t1.sal BETWEEN t3.losal AND t3.hisal
ORDER BY sal DESC, empno
;