SELECT 
    t1.empno,
    t1.ename,
    t1.sal,
    t1.job,
    t2.grade
FROM emp t1, salgrade t2
WHERE t1.sal BETWEEN t2.losal AND t2.hisal
;