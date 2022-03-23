SELECT ename,
    hiredate,
    sal,
    LEAD(sal, 2, 99)
    OVER(ORDER BY HIREDATE) AS "LAG"
FROM emp
;