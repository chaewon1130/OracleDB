SELECT
    deptno,
    job,
    AVG(NVL(sal, 0)) AS AVG_SAL,
    COUNT(*) AS CNT_EMP
FROM
    emp
GROUP BY CUBE(deptno, job)
ORDER BY deptno, job;