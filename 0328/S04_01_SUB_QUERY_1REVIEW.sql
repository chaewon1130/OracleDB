-- P248 1ºÐº¹½À

SELECT t1.empno,
    t1.ename,
    t1.job,
    t1.sal,
    t2.deptno,
    t2.dname,
    t2.loc
FROM emp t1, dept t2 
WHERE t1.deptno = t2.deptno
    AND sal <= (
    SELECT AVG(sal)
    FROM emp
    )
    AND t1.deptno = 20
;