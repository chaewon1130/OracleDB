SELECT empno,
    ename,
    sal,
    RANK() OVER(ORDER BY sal DESC) AS "RANK",
    DENSE_RANK() OVER(ORDER BY sal DESC) AS "DENSE_RANK"
FROM emp;