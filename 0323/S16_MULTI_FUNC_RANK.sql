SELECT empno,
    ename,
    sal,
    RANK() OVER(ORDER BY sal DESC) AS "RANK"
FROM emp;