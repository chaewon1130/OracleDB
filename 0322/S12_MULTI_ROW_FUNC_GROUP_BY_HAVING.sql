SELECT
    deptno,
    AVG(NVL(sal, 0)) AS AVG_SAL
FROM
    emp
GROUP BY
    deptno
HAVING
    AVG(NVL(sal, 0)) >= 2000;