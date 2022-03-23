SELECT ename,
    hiredate,
    sal,
    LAG(sal, 2, 99)
    OVER(ORDER BY HIREDATE) AS "LAG"
FROM emp
;